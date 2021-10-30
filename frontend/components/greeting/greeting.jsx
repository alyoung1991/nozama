import React from 'react';
import { Link } from 'react-router-dom';

const Greeting = ({currentUser, logout}) => {
    const display = currentUser ? (
        <div>
            <div>Hello, {currentUser.name.split(' ')[0]}</div>
            <button onClick={logout}>Sign Out</button>
        </div>
    ) : (
        <div>
            <Link to="/signup">Sign Up</Link>
            <Link to="/login">Login</Link>
        </div>
    )
    return(
        <div>
            {display}
        </div>
    );
}

export default Greeting;