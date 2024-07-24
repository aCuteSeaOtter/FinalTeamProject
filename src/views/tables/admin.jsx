import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';
import './admin.css';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">관리자</Card.Title>
              {/* <span className="d-block m-t-5">
                use props <code>hover</code> with <code>Table</code> component
              </span> */}
            </Card.Header>
            <Card.Body>
              <Table responsive hover>
                <thead>
                  <tr>
                    <th>번호</th>
                    <td></td>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>생년월일</th>
                    <th>성별</th>
                    <th>닉네임</th>
                    <th>생성일</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>
                      <img
                        src="https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_1280.jpg"
                        alt=""
                        className="userImg"
                      />
                    </td>
                    <td>admin1</td>
                    <th>강성욱</th>
                    <td>19970211</td>
                    <td>남성</td>
                    <td>ACuteSeaOtter</td>
                    <td>20240719</td>
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>
                      <img
                        src="https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_1280.jpg"
                        alt=""
                        className="userImg"
                      />
                    </td>
                    <td>admin2</td>
                    <th>강성욱</th>
                    <td>19970211</td>
                    <td>남성</td>
                    <td>ACuteSeaOtter</td>
                    <td>20240719</td>
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>
                      <img
                        src="https://cdn.pixabay.com/photo/2023/12/13/06/40/cat-8446390_1280.jpg"
                        alt=""
                        className="userImg"
                      />
                    </td>
                    <td>admin3</td>
                    <th>강성욱</th>
                    <td>19970211</td>
                    <td>남성</td>
                    <td>ACuteSeaOtter</td>
                    <td>20240719</td>
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
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
