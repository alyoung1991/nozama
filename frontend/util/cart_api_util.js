export const fetchCart = (id, session_id) => (
    $.ajax({
        method: 'GET',
        url: `/api/carts/${id}`,
        data: {session_id}
    })
);

export const createCart = (cart) => (
    $.ajax({
        method: 'POST',
        url: '/api/carts',
        data: {cart}
    })
);

export const emptyCart = (cart) => (
    $.ajax({
        method: 'DELETE',
        url: `/api/carts/${cart.id}`
    })
);