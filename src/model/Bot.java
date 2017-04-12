package model;

import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;

import javax.swing.*;
import java.util.ArrayList;
import java.util.Map;
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

	public DefaultListModel<String> getQueryResult(String type, String word)
    {
		DefaultListModel<String> listItems = new DefaultListModel<>();
        Query query = null;
        word = word.replace("?","");
        word = word.replace(".","");
        word = word.toLowerCase();
        if ("general".equals(type)) {

            String queryKeyword = databaseController.getFact(word);
            query = getQuery(queryKeyword, queryKeyword, queryKeyword);
        }
        else if("geek_term".equals(type)){
            if(word.equals("show all")){
                query = getQuery("showterm", "term", "Movie");
            }else{
                String term = word.substring(word.indexOf("\'")+1, word.lastIndexOf("\'"));
                query = getQuery("term", term.toLowerCase(), "Movie");
            }
        }
        else if("trivia".equals(type)){
            if ("question".equals(word)) {
                do{
                    questionNo = ThreadLocalRandom.current().nextInt(1,25+1);
                    System.out.println(questionNo);
                }while(askedQuestion.contains(questionNo));
                askedQuestion.add(questionNo);
            }

            if ("question".equals(word) || "option".equals(word)) {
                query = getQuery(word, String.valueOf(questionNo), "Movie");
            }
            else
                query = getQuery("trivia_answer", String.valueOf(questionNo), word);
        }

        if(query != null && query.hasSolution()){
            Map<String, Term> solution;
            StringBuilder Allanswer= new StringBuilder();
            while ( query.hasMoreSolutions() ){
                solution = query.nextSolution();
                String answer = solution.get("Answer").toString();
                answer = answer.replace("\'","");
                if(word.equals("show all")){
                    Allanswer.append(answer).append(",");
                }
                else{
                    Allanswer.append(answer);
                }
            }
            listItems.addElement(Allanswer.toString());
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
            case "term":
                query = new Query("term", new Term[]{new Atom(questionNo),queryAnswer});
                break;
            case "showterm":
                query = new Query("term", new Term[]{queryAnswer, new Variable("_")});
                break;
            default:
                query = new Query(keyword, new Term[] {queryAnswer});
                break;
        }
        return query;
    }
}
