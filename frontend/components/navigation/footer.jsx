import React from 'react';

const Footer = () => (
    <div className="footer-container">
        <div className="back-to-top-nav" onClick={() => document.body.scrollTop = document.documentElement.scrollTop = 0}>Back to top</div>
        <div className="footer-links">
            <img 
                className="footer-logo" 
                src={window.logo1URL} 
                alt="nozama-logo"
            />
            <div className="footer-social-links">
                <a className="auth-social-link" href="https://www.linkedin.com/in/albertoyoung/" target="_blank"><i className="fab fa-linkedin"></i></a>
                <a className="auth-social-link" href="https://github.com/alyoung1991" target="_blank"><i className="fab fa-github-square"></i></a>
                <a className="auth-social-link" href="https://www.youngalberto.com/" target="_blank"><i className="fas fa-suitcase"></i></a>
            </div>
        </div>
        <div className="footer-credits">
            Nozama.com is a clone of Amazon.com. Created by Alberto Young 2021
        </div>
    </div>
);

export default Footer;