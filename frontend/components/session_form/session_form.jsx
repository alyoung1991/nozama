import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: "",
            name: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    
    handleSubmit(e) {
        e.preventDefault();
        // converts email to lowercase
        const user = {
            email: this.state.email.toLowerCase(),
            password: this.state.password,
            name: this.state.name
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
                <div>
                    {this.props.formType === 'signup' ? (
                        <label>Your name
                            <input 
                                type="text"
                                value={this.state.name}
                                onChange={this.handleInput('name')}
                            />
                        </label>
                    ) : (<div></div>)
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
                </div>
                </form>
            </div>
        );
    }
}

export default SessionForm;