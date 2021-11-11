import React from "react";
import NavBarContainer from "./navigation/nav_bar_container";
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import Splash from './splash/splash';
import ProductIndexContainer from "./product_index/product_index_container";
import ProductShowContainer from './product_show/product_show_container';
import CreateReviewFormContainer from "./product_show/create_review_form_container";
import EditReviewFormContainer from "./product_show/edit_review_form_container";
import CartContainer from "./cart/cart_container";
import Footer from "./navigation/footer";
import { Switch, Route, useLocation } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from "../util/route_util";


const App = () => {
    const location = useLocation();
    
    return (
        <div>
            <header>
                {location.pathname == '/login' || location.pathname == '/signup' ? null : <NavBarContainer />}
            </header>
            <Switch>
                <AuthRoute exact path="/login" component={LoginFormContainer} />
                <AuthRoute exact path="/signup" component={SignupFormContainer} />
                <Route exact path="/products" component={ProductIndexContainer} />
                <ProtectedRoute path="/products/:productId/review/new" component={CreateReviewFormContainer} />
                <ProtectedRoute path="/products/:productId/review/:reviewId/edit" component={EditReviewFormContainer} />
                <Route path="/products/:productId" component={ProductShowContainer} />
                <Route path="/cart" component={CartContainer} ></Route>
                <Route exact path="/" component={Splash} />
                {/* redirect back to / OR 404 */}
            </Switch>
            <footer>
                {location.pathname == '/login' || location.pathname == '/signup' ? null : <Footer />}
            </footer>
        </div>
    );
    
}

export default App;