package com.online.examDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.online.examDto.ExamDto;
import com.online.utility.DatabaseConnection;

public class ExamDao {
	DatabaseConnection db;
	Connection connect;

	public List<ExamDto> list() {
		List<ExamDto> list = new ArrayList<ExamDto>();

		try {
			db = DatabaseConnection.getInstance();
			connect = db.getConnection();
			PreparedStatement preparedStatement = connect.prepareStatement("select * from question_bank");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				ExamDto dto = new ExamDto();
				dto.setQuestion_id(resultSet.getInt("question_id"));
				dto.setQuestions(resultSet.getString("questions"));
				dto.setOptionA(resultSet.getString("optionA"));
				dto.setOptionB(resultSet.getString("optionB"));
				dto.setOptionC(resultSet.getString("optionC"));
				dto.setOptionD(resultSet.getString("optionD"));
				list.add(dto);
			}
			System.out.println("hiii!!!!!!!!" + list);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
}
