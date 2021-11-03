import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { Switch, Link, Route, useLocation } from 'react-router-dom'
import { AuthRoute } from "../util/route_util";
import SearchContainer from "./search/search_container";

const App = () => {
    const location = useLocation();
    return (
        <div>
            <header>
                <Link to="/">
                    <h1>Nozama</h1>
                </Link>
                {location.pathname == '/login' || location.pathname == '/signup' ? null : <GreetingContainer />}
            </header>
            <Switch>
                <AuthRoute exact path="/login" component={LoginFormContainer} />
                <AuthRoute exact path="/signup" component={SignupFormContainer} />
                <Route path="/" component={SearchContainer} />
            </Switch>
        </div>
    );
    
}

export default App;