import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">매거진</Card.Title>
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
                    <th>작성일</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>동해 여행</td>
                    <td>즐거웠다</td>
                    <td>sedr8456@naver.com</td>
                    <td>2024.07.19</td>
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>동해 여행</td>
                    <td>즐거웠다</td>
                    <td>sedr8456@naver.com</td>
                    <td>2024.07.19</td>
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>동해 여행</td>
                    <td>즐거웠다</td>
                    <td>sedr8456@naver.com</td>
                    <td>2024.07.19</td>
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                </tbody>
              </Table>
              <td>
                <button className="text-capitalize btn btn-outline-primary">새 글</button>
              </td>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    </React.Fragment>
  );
};

export default BootstrapTable;
