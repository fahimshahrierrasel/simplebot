package model;

import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;

import javax.swing.*;
import java.util.Map;

public class Bot {
    private DatabaseController databaseController;
	public Bot(){
		if(!Query.hasSolution("consult(\'C:/Users/Fahim Shahrier Rasel/EclipseWorkspace/Simple Bot/prolog/db.pl\')."))
        {
            System.out.println("Consult Failed!!");
        }
        databaseController = new DatabaseController();
	}

	public DefaultListModel<String> getQueryResult(String word)
    {
		DefaultListModel<String> listItems = new DefaultListModel<>();
        //Variable x = new Variable("X");
        //Query q3 = new Query("hello", new Term[] {new Atom(word),x});

        String queryKeyword = databaseController.getFact(word);
        Query q3 = getQuery(queryKeyword);
        if(q3.hasSolution()){
            Map<String, Term> solution;
            while ( q3.hasMoreSolutions() ){
                solution = q3.nextSolution();
                //System.out.println("Parent of "+word+" is "+solution.get("X"));
                String answer = solution.get("Answer").toString();
                answer = answer.replace("\'","");
                listItems.addElement(answer);
            }
        }
        else{
        	listItems.addElement("There is no solution here");
        }
        return listItems;
    }

    public Query getQuery(String keyword){
        Variable x = new Variable("Answer");
	    Query query;
	    switch (keyword){
            case "hello":
                query = new Query("hello", new Term[] {x});
                break;
            case "name":
                query = new Query("name", new Term[] {x});
                break;
            default:
                query = new Query("undefined", new Term[] {x});
                break;
        }
        return query;
    }
}
