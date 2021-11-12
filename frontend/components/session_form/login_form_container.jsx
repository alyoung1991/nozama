import React from 'react';
import SessionForm from './session_form';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';
import { createCart } from '../../actions/cart_actions';

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'login',
    sessionId: state.session.id,
    navLink: <Link to="/signup" onClick={() => state.errors.session = []}>
                <button className="alt-auth-button">Create your Nozama account</button>
            </Link>
});

const mapDispatchToProps = (dispatch) => ({
    processForm: (user) => dispatch(login(user)),
    createCart: (cart) => dispatch(createCart(cart))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);