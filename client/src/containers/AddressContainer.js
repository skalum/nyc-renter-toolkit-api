import React, { Component } from 'react';
import { connect } from 'react-redux';

import { setAddress } from '../actions/addressActions'

import AddressInput from '../components/AddressInput'
import Address from '../components/Address'

class AddressContainer extends Component {

  render() {
    return (
      <div className="container mt-5 pt-5">
        <AddressInput setAddress={this.props.setAddress} />
        <Address address={this.props.address} />
      </div>
    );
  }
}

const mapStateToProps = state => ({
  address: state.address.address,
});

export default connect(mapStateToProps, { setAddress })(AddressContainer);
