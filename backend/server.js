import 'dotenv/config';
import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';
import nodemailer from 'nodemailer';

const app=express();
const PORT=process.env.PORT||5000;
const origins=(process.env.FRONTEND_ORIGIN||'http://localhost:5173').split(',').map(x=>x.trim());
app.use(helmet());
app.use(cors({origin:(origin,cb)=>{if(!origin||origins.includes(origin)) return cb(null,true); cb(new Error('CORS blocked'));}}));
app.use(express.json({limit:'20kb'}));
const limiter=rateLimit({windowMs:15*60*1000,limit:25,standardHeaders:'draft-8',legacyHeaders:false});
app.get('/api/health',(_,res)=>res.json({ok:true,service:'Aeronit Defence API'}));
app.post('/api/contact',limiter,async(req,res)=>{
 const {name,email,phone='',message}=req.body||{};
 if(!name||!email||!message)return res.status(400).json({message:'Name, email and message are required.'});
 const clean={name:String(name).slice(0,120),email:String(email).slice(0,180),phone:String(phone).slice(0,40),message:String(message).slice(0,5000)};
 try{
  if(process.env.SMTP_HOST&&process.env.SMTP_USER&&process.env.SMTP_PASS&&process.env.CONTACT_TO){
   const transporter=nodemailer.createTransport({host:process.env.SMTP_HOST,port:Number(process.env.SMTP_PORT||587),secure:String(process.env.SMTP_SECURE)==='true',auth:{user:process.env.SMTP_USER,pass:process.env.SMTP_PASS}});
   await transporter.sendMail({from:process.env.SMTP_FROM||process.env.SMTP_USER,to:process.env.CONTACT_TO,replyTo:clean.email,subject:`Aeronit website enquiry — ${clean.name}`,text:`Name: ${clean.name}\nEmail: ${clean.email}\nPhone: ${clean.phone}\n\n${clean.message}`});
  } else console.log('Enquiry received (SMTP not configured):',clean);
  res.json({ok:true,message:'Your enquiry has been received.'});
 }catch(e){console.error(e);res.status(500).json({message:'Unable to send enquiry right now.'});}
});
app.use((_,res)=>res.status(404).json({message:'Route not found'}));
app.listen(PORT,()=>console.log(`Aeronit API running on ${PORT}`));
