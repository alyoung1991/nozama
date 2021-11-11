import React from 'react';
import { Link } from 'react-router-dom';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: "",
            name: "",
            errors: []
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.demoLogin = this.handleSubmit.bind(this);
    }
    
    handleSubmit(e) {
        e.preventDefault();

        let user = {
            // converts email to lowercase
            email: this.state.email.toLowerCase(),
            password: this.state.password,
            name: this.state.name
        }
        if(e.target.localName === "button"){
            user = {
                email: 'guest@email.com',
                password: 'password',
                name: 'Guest User'
            };
        }
        this.props.processForm(user);
    }
    
    handleInput(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }

    renderErrors() {
        return(
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`} className="error-message">
                        <i className="fas fa-exclamation-circle"></i>{error}
                    </li>
                ))}
            </ul>
        );
    }

    render(){
        const formTypeText = this.props.formType === 'login' ? 'Sign-In' : 'Create account';
        const alternateFormPromptText = this.props.formType === 'login' ? 'New to Nozama?' : 'Already have an account?';
        return(
            <div className="session-page">
                <div className="session-form">
                    <Link to="/">
                        <img className="logo session-logo" src={window.logo2URL} alt="nozama-logo-2" />
                    </Link>
                    <form className="session-form-section" onSubmit={this.handleSubmit}>
                        <div className="session-form-heading">{formTypeText}</div>
                        {this.renderErrors()}
                        <div className="session-form-inputs">
                            {this.props.formType === 'signup' ? (
                                <>
                                    <label className="auth-input-label">Your name</label>
                                    <input 
                                        className="auth-input"
                                        type="text"
                                        value={this.state.name}
                                        onChange={this.handleInput('name')}
                                    />
                                </>
                            ) : (<></>)
                            }
                            <label className="auth-input-label">Email</label>
                            <input 
                                className="auth-input"
                                type="text"
                                value={this.state.email}
                                onChange={this.handleInput('email')}
                            />
                            <label className="auth-input-label">Password</label>
                            <input 
                                className="auth-input"
                                type="password"
                                value={this.state.password}
                                onChange={this.handleInput('password')}
                            />
                            <input className="auth-submit-button" type="submit" value={formTypeText} />
                            {this.props.formType === 'login' ? (
                                <button className="auth-submit-button" onClick={this.handleSubmit}>Guest</button>
                            ) : (<></>)
                            }
                            <div className="auth-disclaimer">By continuing, you agree to check out the Nozama creator's <a className="auth-social-link" href="https://www.linkedin.com/in/albertoyoung/" target="_blank">LinkedIn</a> and <a className="auth-social-link" href="https://www.youngalberto.com/" target="_blank">Portfolio</a>.</div>
                        </div>
                    </form>
                    <div className="session-form-divider">
                        <hr className="divider-line">
                        </hr>
                        <div className="alt-form-prompt">{alternateFormPromptText}</div>
                    </div>
                    {this.props.navLink}
                </div>
                <div className="shadow"></div>
            </div>
        );
    }
}

export default SessionForm;