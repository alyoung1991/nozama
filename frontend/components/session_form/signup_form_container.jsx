import React from 'react';
import SessionForm from './session_form';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { signup } from '../../actions/session_actions';
import { createCart } from '../../actions/cart_actions';

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'signup',
    sessionId: state.session.id,
    navLink: <Link to="/login" onClick={() => state.errors.session = []}>
                <button className="alt-auth-button">Sign-In</button>
            </Link>
});

const mapDispatchToProps = (dispatch) => ({
    processForm: (user) => dispatch(signup(user)),
    createCart: (cart) => dispatch(createCart(cart))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);