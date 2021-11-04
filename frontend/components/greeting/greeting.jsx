import React from 'react';
import { Link, Route } from 'react-router-dom';
import SearchContainer from "../search/search_container";

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
            <Link to="/">
                <h1>Nozama</h1>
            </Link>
            <Route path="/" component={SearchContainer} />
            {display}
        </div>
    );
}

export default Greeting;