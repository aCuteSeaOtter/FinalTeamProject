import React from 'react';
import { Row, Col, Card, Table } from 'react-bootstrap';

// // 새로 추가된 컴포넌트
// const TruncatedDescription = ({ fullText, maxLength = 50 }) => {
//   const [isExpanded, setIsExpanded] = React.useState(false);

//   const truncatedText = fullText.length > maxLength 
//     ? fullText.slice(0, maxLength) + '...'
//     : fullText;

//   return (
//     <td>
//       {isExpanded ? fullText : truncatedText}
//       {fullText.length > maxLength && (
//         <button 
//           className="btn btn-link"
//           onClick={() => setIsExpanded(!isExpanded)}
//         >
//           {isExpanded ? '접기' : '더 보기'}
//         </button>
//       )}
//     </td>
//   );
// };

const BootstrapTable = () => {
  return (
    <React.Fragment>
      <Row>
        <Col>

          <Card>
            <Card.Header>
              <Card.Title as="h5">명소</Card.Title>
              {/* <span className="d-block m-t-5">
                use props <code>hover</code> with <code>Table</code> component
              </span> */}
            </Card.Header>
            <Card.Body>
              <Table responsive hover>
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>지명</th>
                    <th>지역</th>
                    <th>제목</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>삼성궁</td>
                    <td>경남 하동군</td>
                    <td>웅장하고 아기자기한 돌탑이 아름다운 곳</td>
                    {/* <TruncatedDescription 
                      fullText="청암면 묵계리에 소재하며 한민족의 영산인 지리산 품속 깊이 청암면 청학동 산길을 휘돌아 1.5Km가량 걸으면 해발 850m에 삼성궁이 자리하고 있다. 삼성궁의 정확한 명칭은 배달성전삼성궁으로, 이 고장 출신 강민주(한풀선사)가 1983년에 고조선시대의 소도를 복원, 민족의 성조인 환인, 환웅, 단군을 모신 배달민족성전으로 민족의 정통 도맥인 선도를 지키고, 신선도를 수행하는 민족의 도장으로 자리 잡아가고 있다. 옛날부터 전해 내려오던 선도를 이어받은 한풀선사가 수자들과 함께 수련하며 돌을 쌓아 올린 1,500여 개 돌탑이 주변의 숲과 어울려 이국적인 정취를 풍겨낸다. 이 돌탑들은 이곳에서는 원력 솟대라 부른다. 삼한 시대에 천신께 제사 지내던 성지, 소도에는 보통 사람들의 접근을 금하려 높은 나무에 기러기 조각을 얹은 솟대로 표시했다. 성황당에 기원을 담듯, 소원을 빌며 지리산 자락의 돌로 솟대를 쌓아 옛 소도를 복원하고 있다. 3,333개의 솟대를 쌓아 성전을 이루고 우리 민족 고유의 정신문화를 되찾아 홍익인간 세계를 이루고자 무예와 가, 무, 악을 수련하는 이들의 터전이다."
                    /> */}
                    <td>
                      <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>삼성궁</td>
                    <td>경남 하동군</td>
                    <td>웅장하고 아기자기한 돌탑이 아름다운 곳</td>
                    <td>
                    <button className="text-capitalize btn btn-outline-warning">수정</button>
                      <button className="text-capitalize btn btn-outline-danger">삭제</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>삼성궁</td>
                    <td>경남 하동군</td>
                    <td>웅장하고 아기자기한 돌탑이 아름다운 곳</td>
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
