import { RECEIVE_PRODUCT, RECEIVE_REVIEW, RECEIVE_REVIEWS } from '../actions/product_actions';

const reviewsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_PRODUCT:
            return Object.assign({}, state, action.reviews);
        case RECEIVE_REVIEW:
            return Object.assign({}, state, {[action.review.id]: action.review});
        case RECEIVE_REVIEWS:
            return action.reviews
        default:
            return state;
    }
};

export default reviewsReducer;
