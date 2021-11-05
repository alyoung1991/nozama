import React from 'react';

const ProductDetail = ({product}) => {
    if(!product) return null;
    const aboutThisItemArray = product.description.split("//");
    return(
        <div className="product-show-container">
            <div className="nav-back-button">Back to Products</div>
            <div className="product-main-section">
                <div className="product-gallery-section">
                    <img className="product-show-image" src={product.picture_url} alt={product.name} />
                </div>
                <div className="product-info-section">
                    <div className="product-show-title">{product.name}</div>
                    <div>RATING PLACEHOLDER</div>
                    <div>Price: ${product.price}</div>
                    <div className="about-heading"><b>About this item</b></div>
                    <ul className="about-list">
                        {aboutThisItemArray.map(about => {
                            return <li><span>{about}</span></li>;
                        })}
                    </ul>
                </div>
                <div className="product-checkout-section">
                    <div>${product.price}</div>
                </div>
            </div>
        </div>
    );
    
};

export default ProductDetail;