import React from 'react';
import ProductDetail from './product_detail';
import CreateReviewFormContainer from './create_review_form_container';
import { ReviewLink } from '../../util/link_util';

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
                <ProductDetail product={product} reviews={reviews} sessionId={sessionId} fetchCart={fetchCart} createCartItem={createCartItem} />
                <ReviewLink
                    component={CreateReviewFormContainer}
                    to={`/products/${productId}/review/new`}
                    label="Write a customer review"
                />
            </div>
        );
    }
};

export default ProductShow;


