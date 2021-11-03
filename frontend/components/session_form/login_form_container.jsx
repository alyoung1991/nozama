import React from 'react';
import SessionForm from './session_form';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';

const mapStateToProps = ({errors}) => ({
    errors: errors.session,
    formType: 'login',
    navLink: <Link to="/signup">Sign up</Link>
});

const mapDispatchToProps = (dispatch) => ({
    processForm: (user) => dispatch(login(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);