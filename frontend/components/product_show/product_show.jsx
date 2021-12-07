import React from 'react';
import ProductDetail from './product_detail';

class ProductShow extends React.Component{
    constructor(props){
        super(props);

        this.state = {reviews: this.props.reviews};
        document.body.scrollTop = document.documentElement.scrollTop = 0
    }

    componentDidMount(){
        setTimeout(() => {
            this.props.fetchProduct(this.props.productId);
        }, 1500);
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


