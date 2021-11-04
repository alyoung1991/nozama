import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import ProductIndexContainer from "./search/product_index_container";
import ProductShowContainer from './product_show/product_show_container';
import { Switch, Route, useLocation } from 'react-router-dom'
import { AuthRoute } from "../util/route_util";


const App = () => {
    const location = useLocation();
    return (
        <div>
            <header>
                {location.pathname == '/login' || location.pathname == '/signup' ? null : <GreetingContainer />}
            </header>
            <Switch>
                <AuthRoute exact path="/login" component={LoginFormContainer} />
                <AuthRoute exact path="/signup" component={SignupFormContainer} />
                <Route exact path="/products" component={ProductIndexContainer} />
                <Route path="/products/:productId" component={ProductShowContainer} />
                {/* redirect back to / OR 404 */}
            </Switch>
        </div>
    );
    
}

export default App;