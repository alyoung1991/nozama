import React from 'react';
import { Link, Route } from 'react-router-dom';
import { withRouter } from 'react-router';
import GreetingContainer from "../greeting/greeting_container";
import SearchContainer from '../search/search_container';

class NavBar extends React.Component {
    constructor(props){
        super(props);
        this.handleClick = this.handleClick.bind(this);
        this.navigateToCart = this.navigateToCart.bind(this);
        this.state = {};
    }

    componentDidMount(){
        if(this.props.sessionId){
            this.props.fetchCart(1, this.props.sessionId)
        }
    }

    handleClick(department){
        this.props.updateFilter('department', department)
            .then(
                this.props.updateFilter('query', '')
            )
            .then(
                this.props.history.push({
                    pathname: '/products/',
                    search: `q=+d=${department}`
                })
            ).then(
                location.reload()
            );
    }

    navigateToCart(){
        this.props.history.push({
            pathname: '/cart/'
        });
    }

    render(){
        return(
            <div className="nav-container">
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
                            <a className="nav-bar-github-link" href="https://github.com/alyoung1991/nozama" target="_blank"><i className="fab fa-github"></i></a>
                        </div>
                    </div>
                    <div className="nav-cart" onClick={() => this.navigateToCart()}>
                        <div className="nav-cart-icon"><i className="fas fa-shopping-cart"></i></div>
                        <div className="nav-cart-label">Cart</div>
                    </div>
                </div>
                <div className="sub-nav-bar">
                    <div onClick={() => this.handleClick("All")} className="sub-nav-all-link" >All</div>
                    <div onClick={() => this.handleClick("Computers")}>Computers</div>
                    <div onClick={() => this.handleClick("Electronics")}>Electronics</div>
                    <div onClick={() => this.handleClick("Garden & Outdoor")}>Garden & Outdoor</div>
                    <div onClick={() => this.handleClick("Grocery & Gourmet Food")}>Grocery</div>
                    <div onClick={() => this.handleClick("Home & Kitchen")}>Home & Kitchen</div>
                    <div onClick={() => this.handleClick("Office Products")}>Office Products</div>
                    <div onClick={() => this.handleClick("Pet Supplies")}>Pet Supplies</div>
                    <div onClick={() => this.handleClick("Smart Home")}>Smart Home</div>
                    <div onClick={() => this.handleClick("Sports & Outdoors")}>Sports & Fitness</div>
                    <div onClick={() => this.handleClick("Toys & Games")}>Toys & Games</div>
                </div>
            </div>
        );
    }
};

export default withRouter(NavBar);