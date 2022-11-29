package model.dao;

import java.util.List;


public interface INewDAO<T> {
	List<T>  getAll();
	T get(int id);
	int add(T t);
	int update(T t);
	int delete(T t);
}
