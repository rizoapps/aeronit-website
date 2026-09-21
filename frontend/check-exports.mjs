import * as rr from 'react-router-dom';
console.log('useLocation:', typeof rr.useLocation);
console.log('location-related:', Object.keys(rr).filter(k=>/cation/i.test(k)).join(','));
console.log('has Routes/Route/NavLink/Link:', typeof rr.Routes, typeof rr.Route, typeof rr.NavLink, typeof rr.Link);
import * as fm from 'framer-motion';
console.log('motion.div available:', typeof fm.motion, typeof fm.motion?.div);