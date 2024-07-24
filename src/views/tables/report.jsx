import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">신고</Card.Title>
              {/* <span className="d-block m-t-5">
                use props <code>hover</code> with <code>Table</code> component
              </span> */}
            </Card.Header>
            <Card.Body>
              <Table responsive hover>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>신고한 여행기 번호</th>
                    <th>신고한 여행기 제목</th>
                    <th>신고사유</th>
                    <th>신고일</th>
                    <th>처리여부</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>1</td>
                    <td>동해여행</td>
                    <td>그냥</td>
                    <td>2024.07.19</td>
                    <td>O</td>
                    <td>[답변하기]</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>1</td>
                    <td>동해여행</td>
                    <td>그냥</td>
                    <td>2024.07.19</td>
                    <td>X</td>
                    <td>[답변하기]</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>2</td>
                    <td>동해여행</td>
                    <td>그냥</td>
                    <td>2024.07.19</td>
                    <td>O</td>
                    <td>[답변하기]</td>
                  </tr>
                  
                </tbody>
              </Table>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    </React.Fragment>
  );
};

export default BootstrapTable;
