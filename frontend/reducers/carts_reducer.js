import { RECEIVE_CART, REMOVE_CART } from '../actions/cart_actions';

const cartsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CART:
            return Object.assign({}, state, action.cart);
        case REMOVE_CART:
            debugger;
            if(action.cart){
                const newState = Object.assign({}, state, {[action.cart.id]: action.cart});
                newState[action.cart.id]['cart_items'] = [];
                return newState;
            } else{
                return Object.assign({}, state);
            }
        default:
            return state;
    }
};

export default cartsReducer;
