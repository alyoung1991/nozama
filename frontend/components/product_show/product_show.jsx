import React from 'react';
import ProductDetail from './product_detail';
import ReviewFormContainer from './review_form_container';
import { ProtectedRoute } from '../../util/route_util';
import { ReviewLink } from '../../util/link_util';

class ProductShow extends React.Component{
    constructor(props){
        super(props);
    }

    componentDidMount(){
        this.props.fetchProduct(this.props.productId);
    }

    render(){
        const { product, productId, reviews } = this.props;
        return (
            <div>
                <ProductDetail product={product} reviews={reviews}  />
                <ReviewLink
                    component={ReviewFormContainer}
                    to={`/products/${productId}/review`}
                    label="Leave a Review"
                />
                <ProtectedRoute
                    path="/products/:productId/review"
                    component={ReviewFormContainer}
                />
            </div>
        );
    }
};

export default ProductShow;


