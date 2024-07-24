import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';
import './user.css';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">유저</Card.Title>
              {/* <span className="d-block m-t-5">
                use props <code>hover</code> with <code>Table</code> component
              </span> */}
            </Card.Header>
            <Card.Body>
              <Table responsive hover>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th></th>
                    <th>이메일</th>
                    <th>이름</th>
                    <th>생년월일</th>
                    <th>성별</th>
                    <th>닉네임</th>
                    <th>가입일</th>
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
                    <td>sedr8456@naver.com</td>
                    <th>강성욱</th>
                    <td>19970211</td>
                    <td>남성</td>
                    <td>ACuteSeaOtter</td>
                    <td>20240719</td>
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
                    <td>sedr8456@naver.com</td>
                    <th>강성욱</th>
                    <td>19970211</td>
                    <td>남성</td>
                    <td>ACuteSeaOtter</td>
                    <td>20240719</td>
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
                    <td>sedr8456@naver.com</td>
                    <th>강성욱</th>
                    <td>19970211</td>
                    <td>남성</td>
                    <td>ACuteSeaOtter</td>
                    <td>20240719</td>
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
