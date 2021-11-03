import React from 'react';

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
                email: 'demo@email.com',
                password: 'password',
                name: 'Demo User'
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
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    render(){
        return(
            <div>
                <form onSubmit={this.handleSubmit}>
                {this.renderErrors()}
                {this.props.navLink}
                <div>
                    {this.props.formType === 'signup' ? (
                        <label>Your name
                            <input 
                                type="text"
                                value={this.state.name}
                                onChange={this.handleInput('name')}
                            />
                        </label>
                    ) : (<></>)
                    }
                    <label>Email
                        <input 
                            type="text"
                            value={this.state.email}
                            onChange={this.handleInput('email')}
                        />
                    </label>
                    <br/>
                    <label>Password
                        <input 
                            type="password"
                            value={this.state.password}
                            onChange={this.handleInput('password')}
                        />
                    </label>
                    <br/>
                    <input type="submit" value={this.props.formType} />
                    {this.props.formType === 'login' ? (
                        <button onClick={this.handleSubmit}>Demo User Login</button>
                    ) : (<></>)
                    }
                    
                </div>
                </form>
            </div>
        );
    }
}

export default SessionForm;