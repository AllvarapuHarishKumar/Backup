import React from 'react';
import {Jumbotron,Card, CardImg, CardText, CardBlock,CardTitle, CardSubtitle, Button, Row, Col,Badge} from 'reactstrap';
import {withStyles} from 'material-ui/styles';

const styles={
  design1:{
    'background-color':'black',
     width:'100%',
     height:'20%',
     'padding-left':'15',
  }
}
const Example = (props) => {
  return (
    <Row className="myStyle">
      
     <Col sm="12">
    
        <Row>
          <Col sm="10">
            <Card className="design1">
               
            </Card>
          </Col>
         
     </Row>
      
   </Col>
    
    </Row>

    //2nd Row

  );
};

export default withStyles(styles)(Example);