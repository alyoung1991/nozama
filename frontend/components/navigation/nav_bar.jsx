import React from 'react';
import { Link, Route } from 'react-router-dom';
import GreetingContainer from "../greeting/greeting_container";
import SearchContainer from '../search/search_container';

const NavBar = () => (
    <div className="nav-bar">
        <Link to="/">
            <img className="logo" src="/assets/logo.png" alt="nozama logo" />
        </Link>
        <Route path="/" component={SearchContainer} />
        <GreetingContainer />
    </div>
);

export default NavBar;