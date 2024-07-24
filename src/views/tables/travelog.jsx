import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">여행기</Card.Title>
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
                    <th>작성자(이메일)</th>
                    <th>작성자(닉네임)</th>
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
                    <td>오기</td>
                    <td>2024.07.19</td>
                    <td>[수정], [삭제]</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>동해 여행</td>
                    <td>즐거웠다</td>
                    <td>sedr8456@naver.com</td>
                    <td>오기</td>
                    <td>2024.07.19</td>
                    <td>[수정], [삭제]</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>동해 여행</td>
                    <td>즐거웠다</td>
                    <td>sedr8456@naver.com</td>
                    <td>오기</td>
                    <td>2024.07.19</td>
                    <td>[수정], [삭제]</td>
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
