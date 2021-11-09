import React from "react";
import ReactDOM from "react-dom";
import Root from './components/root';
import configureStore from "./store/store";
import { fetchProducts, fetchReviews } from "./actions/product_actions";

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    let store;

    // bootstraps current user
    if (window.currentUser) {
        const preloadedState = {
            entities: {
                users: { [window.currentUser.id]: window.currentUser }
            },
            session: { id: window.currentUser.id }
        };
        store = configureStore(preloadedState);
        delete window.currentUser;
    } else {
        store = configureStore();
    }

    window.dispatch = store.dispatch;
    window.getState = store.getState;
    window.fetchProducts = fetchProducts
    window.fetchReviews = fetchReviews

    ReactDOM.render(<Root store={store} />, root);
});