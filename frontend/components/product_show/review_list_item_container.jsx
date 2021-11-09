import React from 'react';
import { connect } from 'react-redux';

const Review = ({ review, author }) => {
    const { rating, body, headline } = review;
    return (
        <div>
            <ul>
                <li>Rating: {rating}</li>
                <li>Headline: {headline}</li>
                <li>{body} - by {author.name}</li>
            </ul>
        </div>
    );
};

const mapStateToProps = ({entities: { users }}, { review }) => {
    return {
        author: users[review.author_id]
    };
};

export default connect(mapStateToProps)(Review);