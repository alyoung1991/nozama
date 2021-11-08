import React from 'react';
import { Link, Route } from 'react-router-dom';
import GreetingContainer from "../greeting/greeting_container";
import SearchContainer from '../search/search_container';

class NavBar extends React.Component {
    render(){
        return(
            <div className="nav-bar">
                <Link className="logo-container" to="/">
                    <img 
                        className="logo" 
                        src={window.logo1URL} 
                        alt="nozama logo"
                    />
                </Link>
                <div className="nav-location">
                    <div className="nav-marker-icon"><i className="fas fa-map-marker-alt"></i></div>
                    <div className="deliver-to">
                        <div className="deliver-to-user">Deliver to {this.props.currentUser ? this.props.currentUser.name.split(' ')[0] : ''}</div>
                        <div className="user-location">New York 10023</div>
                    </div>
                </div>
                <Route path="/" component={SearchContainer} />
                <div className="us-flag-container">
                    <img className="us-flag-icon" src={window.usFlag} alt="us flag" />
                </div>
                <GreetingContainer />
                <div className="nav-returns-container">
                    <div>
                        <div>Returns</div>
                        <div className="signout-button">& Orders</div>
                    </div>
                </div>
                <div className="nav-cart">
                    <div className="nav-cart-icon"><i className="fas fa-shopping-cart"></i></div>
                    <div className="nav-cart-label">Cart</div>
                </div>
            </div>
        );
    }
};

export default NavBar;