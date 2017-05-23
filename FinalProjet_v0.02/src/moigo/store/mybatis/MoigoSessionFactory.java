package moigo.store.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MoigoSessionFactory {
	
	private static MoigoSessionFactory instance;
	private static SqlSessionFactory sqlSessionFactory;
	private final String resource = "mybatis-config.xml";
	
	private MoigoSessionFactory() {}
	
	public static MoigoSessionFactory getInstance() {
		if(instance == null) {
			instance = new MoigoSessionFactory();
		}
		return instance;
	}
	
	public SqlSession getSession() {
		if(sqlSessionFactory == null) {
			Reader reader = null;
			
			try {
				reader = Resources.getResourceAsReader(resource);
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException("MyBatis 설정파일 로드중 오류 발생");
			}
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		}
		return sqlSessionFactory.openSession(true);  //auto commit (true)
	}
}
