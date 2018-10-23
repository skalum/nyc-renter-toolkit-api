import React, { Component } from 'react';
import logo from './logo.svg';

import { BrowserRouter as Router, Route, Link } from "react-router-dom";

import {
  Button,
  Collapse,
  Container,
  Jumbotron,
  Navbar,
  NavbarToggler,
  NavbarBrand,
  Nav,
  NavItem,
  NavLink,
  UncontrolledDropdown,
  DropdownToggle,
  DropdownMenu,
  DropdownItem } from 'reactstrap';

import AddressContainer from './containers/AddressContainer'
import ProfileContainer from './containers/ProfileContainer'

import { setAddress } from './actions/addressActions'

class App extends Component {
  state = {
    isOpen: false,
  }

  toggle = () => {
    this.setState({
      isOpen: !this.state.isOpen
    });
  }

  componentDidMount() {
    window.fetch('/api/addresses')
      .then(response => response.json())
      .then(json => console.log(json))
      .catch(error => console.log(error));
  }

  render() {
    return (
      <>
      <Router>
        <div>
          <Navbar color="light" light expand="md" fixed="top">
            <NavbarBrand href="/">NYC Renter Toolkit</NavbarBrand>
            <NavbarToggler onClick={this.toggle} />
            <Collapse isOpen={this.state.isOpen} navbar>
              <Nav className="ml-auto" navbar>
                <NavItem>
                  <NavLink href="/address/">Set Address</NavLink>
                </NavItem>
                <NavItem>
                  <NavLink href="/profile/">Profile</NavLink>
                </NavItem>
              </Nav>
            </Collapse>
          </Navbar>

          <Route exact path="/" component={Home} />
          <Route path="/address" component={Address} />
          <Route path="/profile" component={Profile} />
        </div>
      </Router>
    </>
    );
  }
}

const Home = () => (
  <div role="main" class="container">
    <br /><br /><br />
      <Jumbotron>
        <h1 className="display-3">Weclcome to the NYC Renter Toolkit!</h1>
        <p className="lead">All the information you need about your building and neighborhood!</p>
        <hr className="my-2" />
        <p>Click below to get started...</p>
        <p className="lead">
          <Button color="primary">Learn More</Button>
        </p>
      </Jumbotron>
  </div>
)

const Address = () => (
  <AddressContainer />
)

const Profile = () => (
  <ProfileContainer />
)

export default App;
