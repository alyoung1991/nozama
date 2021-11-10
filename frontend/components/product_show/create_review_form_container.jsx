import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchProduct, createReview } from '../../actions/product_actions.js';
import ReviewForm from './review_form';

const mapStateToProps = (state, ownProps) => ({
    review: {
        headline: '',
        body: '',
        rating: 5
    },
    formType: 'Create Review',
    product: state.entities.products[ownProps.match.params.productId]
});

const mapDispatchToProps = (dispatch) => ({
    action: review => dispatch(createReview(review)),
    fetchProduct: id => dispatch(fetchProduct(id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewForm));