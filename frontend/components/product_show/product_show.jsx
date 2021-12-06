import React from 'react';
import ProductDetail from './product_detail';

class ProductShow extends React.Component{
    constructor(props){
        super(props);

        this.state = {reviews: this.props.reviews};
    }

    componentDidMount(){
        setTimeout(() => {
            this.props.fetchProduct(this.props.productId);
        }, 1000);
    }

    render(){
        const { product, productId, reviews, sessionId, fetchCart, createCartItem } = this.props;
        console.log(reviews);
        return (
            <div>
                <ProductDetail product={product} reviews={reviews} sessionId={sessionId} fetchCart={fetchCart} createCartItem={createCartItem} productId={productId} />
            </div>
        );
    }
};

export default ProductShow;


