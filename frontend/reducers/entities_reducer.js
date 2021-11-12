import { combineReducers } from "redux";
import productsReducer from "./products_reducer";
import usersReducer from "./users_reducer";
import reviewsReducer from "./reviews_reducer";
import cartsReducer from "./carts_reducer";

const entitiesReducer = combineReducers({
    carts: cartsReducer,
    users: usersReducer,
    products: productsReducer,
    reviews: reviewsReducer
});

export default entitiesReducer;