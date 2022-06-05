import React from "react"
import PropTypes from "prop-types"
class Top extends React.Component {
  render () {
    return (
      <React.Fragment>
        {this.props.greeting}
        <h1>aaa</h1>
      </React.Fragment>
    );
  }
}

Top.propTypes = {
  greeting: PropTypes.string
};
export default Top
