import React from 'react';
import ProductDetail from './product_detail';

class ProductShow extends React.Component{
    constructor(props){
        super(props);
    }

    componentDidMount(){
        this.props.fetchProduct(this.props.productId);
    }

    render(){
        const { product, productId, reviews, sessionId, fetchCart, createCartItem } = this.props;
        return (
            <div>
                <ProductDetail product={product} reviews={reviews} sessionId={sessionId} fetchCart={fetchCart} createCartItem={createCartItem} productId={productId} />
            </div>
        );
    }
};

export default ProductShow;


