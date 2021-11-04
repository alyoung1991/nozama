import React from 'react';

const ProductDetail = ({product}) => (
    <div>
        <p>Name: {product.name}</p>
        <p>Description: {product.description}</p>
        <p>Price: ${product.price}</p>
        <img className="product-show-image" src={product.picture_url} alt={product.name} />
    </div>
);

export default ProductDetail;