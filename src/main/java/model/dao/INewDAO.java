package model.dao;

import java.util.List;


public interface INewDAO<T> {
	List<T>  getAll();
	T get(int id);
	void add(T t);
	void update(T t);
	void delete(T t);
}
