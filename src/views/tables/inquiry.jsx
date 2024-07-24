import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">질문</Card.Title>
              {/* <span className="d-block m-t-5">
                use props <code>hover</code> with <code>Table</code> component
              </span> */}
            </Card.Header>
            <Card.Body>
              <Table responsive hover>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>내용(미리보기)</th>
                    <th>등록일</th>
                    <th>답변여부</th>
                    <th>비밀글여부</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>집에 언제 가요</td>
                    <td>하이</td>
                    <td>2024.07.19</td>
                    <td></td>
                    <td>O</td>
                    <td>[답변하기]</td>
                  </tr>
                  <tr>
                  <th scope="row">1</th>
                    <td>집에 언제 가요</td>
                    <td>하이</td>
                    <td>2024.07.19</td>
                    <td></td>
                    <td>O</td>
                    <td>[답변하기]</td>
                  </tr>
                  <tr>
                  <th scope="row">1</th>
                    <td>집에 언제 가요</td>
                    <td>하이</td>
                    <td>2024.07.19</td>
                    <td></td>
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
