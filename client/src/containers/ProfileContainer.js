import React, { Component } from 'react';
import { connect } from 'react-redux';

import {
  ListGroup,
  ListGroupItem,
  ListGroupItemText,
  ListGroupItemHeading, } from 'reactstrap';

class ProfileContainer extends Component {
  render() {
    return (
      <div class="container mt-5">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Profile</h1>
        </div>
        <h3>
          {this.props.houseNumber} {this.props.streetName}
          {this.props.borough} {this.props.zip}
        </h3>
      <ListGroup>
        <ListGroupItem>
          <ListGroupItemHeading>List group item heading</ListGroupItemHeading>
          <ListGroupItemText>
          Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.
          </ListGroupItemText>
        </ListGroupItem>
        <ListGroupItem>
          <ListGroupItemHeading>List group item heading</ListGroupItemHeading>
          <ListGroupItemText>
          Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.
          </ListGroupItemText>
        </ListGroupItem>
        <ListGroupItem>
          <ListGroupItemHeading>List group item heading</ListGroupItemHeading>
          <ListGroupItemText>
          Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.
          </ListGroupItemText>
        </ListGroupItem>
      </ListGroup>
    </div>
    );
  }
}

const mapStateToProps = state => ({
  houseNumber: state.address.houseNumber,
  streetName: state.address.boePreferredStreetName,
  borough: state.address.firstBoroughName,
  zip: state.address.zipCode,
});

export default connect(mapStateToProps)(ProfileContainer);
