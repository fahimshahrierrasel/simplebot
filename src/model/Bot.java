package model;

import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;

import javax.swing.*;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class Bot {
    private DatabaseController databaseController;
    private ArrayList<Integer> askedQuestion = new ArrayList<>();
    int questionNo;
	public Bot(){
		if(!Query.hasSolution("consult(\'C:/Users/Fahim Shahrier Rasel/EclipseWorkspace/Simple Bot/prolog/db.pl\')."))
        {
            System.out.println("Consult Failed!!");
        }
        databaseController = new DatabaseController();
	}
	public void clearAskedQuestions(){
	    askedQuestion.clear();
    }
	private boolean isThisAskedBefore(int questionNumber) {
        boolean notAsked = true;
        return askedQuestion.contains(questionNumber);
    }

	public DefaultListModel<String> getQueryResult(String type, String word)
    {
		DefaultListModel<String> listItems = new DefaultListModel<>();
        Query q3 = null;

        if ("general".equals(type)) {
            String queryKeyword = databaseController.getFact(word);
            q3 = getQuery(queryKeyword, queryKeyword, queryKeyword);
        }
        else if("movie".equals(type)){
            q3 = getQuery("movie", "Movie", "Movie");
        }
        else if("trivia".equals(type)){
            if ("question".equals(word)) {
                do{
                    Random random = new Random();

                    questionNo = ThreadLocalRandom.current().nextInt(1,4+1);
                    System.out.println(questionNo);
                }while(askedQuestion.contains(questionNo));
                askedQuestion.add(questionNo);
            }

            if ("question".equals(word) || "option".equals(word)) {
                q3 = getQuery(word, String.valueOf(questionNo), "Movie");
            }
            else
                q3 = getQuery("trivia_answer", String.valueOf(questionNo), word);
        }

        if(q3 != null && q3.hasSolution()){
            Map<String, Term> solution;
            while ( q3.hasMoreSolutions() ){
                solution = q3.nextSolution();

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

    public Query getQuery(String keyword, String questionNo, String result){
        Variable queryAnswer = new Variable("Answer");
	    Query query;
	    switch (keyword){
            case "hello":
                query = new Query("hello", new Term[] {queryAnswer});
                break;
            case "name":
                query = new Query("name", new Term[] {queryAnswer});
                break;
            case "question":
                query = new Query("question", new Term[]{new Atom(questionNo),queryAnswer});
                break;
            case "option":
                query = new Query("option", new Term[]{new Atom(questionNo),queryAnswer});
                break;
            case "trivia_answer":
                query = new Query("trivia_answer", new Term[]{new Atom(questionNo),
                        new Atom(result), queryAnswer});
                break;
            default:
                query = new Query("undefined", new Term[] {queryAnswer});
                break;
        }
        return query;
    }
}
