import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">공지</Card.Title>
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
                    <th>관리자(아이디)</th>
                    <th>등록일</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>오늘은 칼퇴</td>
                    <td>집에 가도록 하세요.</td>
                    <td>sedr8456</td>
                    <td>2024.07.19</td>
                    <td>
                      <button className="text-capitalize btn btn-primary">수정</button>
                      <button className="text-capitalize btn btn-primary">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>오늘은 칼퇴</td>
                    <td>집에 가도록 하세요.</td>
                    <td>sedr8456</td>
                    <td>2024.07.19</td>
                    <td>
                      <button className="text-capitalize btn btn-primary">수정</button>
                      <button className="text-capitalize btn btn-primary">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>오늘은 칼퇴</td>
                    <td>집에 가도록 하세요.</td>
                    <td>sedr8456</td>
                    <td>2024.07.19</td>
                    <td>
                      <button className="text-capitalize btn btn-primary">수정</button>
                      <button className="text-capitalize btn btn-primary">삭제</button>
                    </td>
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
