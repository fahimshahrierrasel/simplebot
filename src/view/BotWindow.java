package view;

import model.Bot;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.AdjustmentEvent;
import java.awt.event.AdjustmentListener;

public class BotWindow {

	public JFrame frame;
	private JTextField query;
	private DefaultListModel<String> listItems;
	private JRadioButton rdbtnTrivia;
	private JRadioButton rdbtnGeekTerm;
	private JRadioButton rdbtnGeneral;
    private Bot bot = new Bot();
	private final ButtonGroup topicSelector = new ButtonGroup();
	/**
	 * Create the application.
	 */
	public BotWindow() {
		initialize();
	}
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {

		// Layouts
		frame = new JFrame();
		frame.setIconImage(Toolkit.getDefaultToolkit().getImage("res\\robot.png"));
		frame.setTitle("Simple Bot");
		frame.setBounds(100, 100, 640, 360);
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(new BorderLayout(0, 0));
		
		JScrollPane scrollPane = new JScrollPane();
		frame.getContentPane().add(scrollPane, BorderLayout.CENTER);
		scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
		
		JPanel panel = new JPanel();
		frame.getContentPane().add(panel, BorderLayout.SOUTH);
		panel.setLayout(new BoxLayout(panel, BoxLayout.X_AXIS));
		JPanel sidePanel = new JPanel();
		sidePanel.setBackground(Color.LIGHT_GRAY);
		frame.getContentPane().add(sidePanel, BorderLayout.WEST);
		sidePanel.setLayout(new GridLayout(0, 1, 0, 0));
		
		// Sample Data
		listItems = new DefaultListModel<>();

		
		// GUI Components
		JList<String> list = new JList<>(listItems);
		list.setFont(new Font("Serif", Font.ITALIC, 14));
		scrollPane.setViewportView(list);
		//list.setCellRenderer(new MyListCellThing());

		
		query = new JTextField();
		query.setToolTipText("Write Here. Ex: who are you");
		query.setFont(new Font("Serif", Font.ITALIC, 14));
		panel.add(query);
		query.setColumns(10);
		
		JButton sendQuery = new JButton("Send");
		sendQuery.setForeground(Color.BLACK);
		sendQuery.setToolTipText("Click to send text");
		sendQuery.setBackground(Color.GREEN);
		sendQuery.setFont(new Font("Serif", Font.BOLD, 14));
		panel.add(sendQuery);
		
		rdbtnGeneral = new JRadioButton("General");
		rdbtnGeneral.setFont(new Font("Serif", Font.BOLD, 13));
		topicSelector.add(rdbtnGeneral);
		sidePanel.add(rdbtnGeneral);
		
		rdbtnGeekTerm = new JRadioButton("Geek Term");
		rdbtnGeekTerm.setFont(new Font("Serif", Font.BOLD, 13));
		topicSelector.add(rdbtnGeekTerm);
		sidePanel.add(rdbtnGeekTerm);
		
		rdbtnTrivia = new JRadioButton("Geek Trivia");
		rdbtnTrivia.setFont(new Font("Serif", Font.BOLD, 13));
		topicSelector.add(rdbtnTrivia);
		sidePanel.add(rdbtnTrivia);

		rdbtnGeneral.setSelected(true);
		
		// Component Actions
		scrollPane.getVerticalScrollBar().addAdjustmentListener(new AdjustmentListener(){
			public void adjustmentValueChanged(AdjustmentEvent e){
				e.getAdjustable().setValue(e.getAdjustable().getMaximum());
			}
		});

		rdbtnGeneral.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(rdbtnGeneral.isSelected()){
					listItems.add(listItems.size(), "General Discussion is now selected");
				}
			}
		});

		rdbtnGeekTerm.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(rdbtnGeekTerm.isSelected()){
					listItems.add(listItems.size(), "Geek Term is now selected");
					System.out.println("Geek Term Selected");
				}
			}
		});

		rdbtnTrivia.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				if(rdbtnTrivia.isSelected()){
					bot.clearAskedQuestions();
				    listItems.add(listItems.size(), "Geek Trivia is now selected");
					trivia_question();
				}
			}
		});

		query.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				topicSelectAction();
			}
		});
		
		sendQuery.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				topicSelectAction();
			}
		});
	}

	private void topicSelectAction(){
		if(rdbtnGeneral.isSelected())
			querySubmitAction("general");
		else if(rdbtnTrivia.isSelected()){
			querySubmitAction("trivia");
			trivia_question();
		}
		else if(rdbtnGeekTerm.isSelected()){
			querySubmitAction("geek_term");
		}
	}

	private void trivia_question(){

		DefaultListModel<String> items1 = bot.getQueryResult("trivia","question");
		for(int i=0; i < items1.size(); i++){
			listItems.add(listItems.size(), "Bot: " + items1.getElementAt(i));
		}
		DefaultListModel<String> items2 = bot.getQueryResult("trivia","option");
		for(int i=0; i < items2.size(); i++){
			listItems.add(listItems.size(), items2.getElementAt(i));
		}
	}

	private void querySubmitAction(String queryType){
		String queries = query.getText();
		listItems.add(listItems.size(), "You: " + queries);

		DefaultListModel<String> items = bot.getQueryResult(queryType, queries);
		for(int i=0; i < items.size(); i++){
			listItems.add(listItems.size() + i, "Bot: " + items.getElementAt(i));
		}
		query.setText("");
	}
}
