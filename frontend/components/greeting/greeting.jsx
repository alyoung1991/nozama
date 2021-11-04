import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({currentUser, logout}) => {
    const display = currentUser ? (
        <div>
            <div>Hello, {currentUser.name.split(' ')[0]}</div>
            <span className="signout-button" onClick={logout}>Sign Out</span>
        </div>
    ) : (
        <div>
            <div>Hello, Sign in</div>
            <Link className="auth-link" to="/signup">Sign Up</Link>
            <Link className="auth-link" to="/login">Login</Link>
        </div>
    )
    return(
        <div className="greeting-message">
            {display}
        </div>
    );
}

export default Greeting;