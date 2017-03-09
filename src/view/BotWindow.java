package view;

import javax.swing.JFrame;
import javax.swing.JTextField;
import model.Bot;
import java.awt.BorderLayout;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.BoxLayout;
import javax.swing.DefaultListModel;
import javax.swing.JList;
import java.awt.event.ActionListener;
import java.awt.event.AdjustmentEvent;
import java.awt.event.AdjustmentListener;
import java.awt.event.ActionEvent;
import javax.swing.JScrollPane;
import java.awt.Font;
import javax.swing.JRadioButton;
import java.awt.GridLayout;

public class BotWindow {

	public JFrame frame;
	private JTextField query;
	DefaultListModel<String> listItems;
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
		frame.setTitle("Simple Bot");
		frame.setBounds(100, 100, 450, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(new BorderLayout(0, 0));
		
		JScrollPane scrollPane = new JScrollPane();
		frame.getContentPane().add(scrollPane, BorderLayout.CENTER);
		scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
		
		JPanel panel = new JPanel();
		frame.getContentPane().add(panel, BorderLayout.SOUTH);
		panel.setLayout(new BoxLayout(panel, BoxLayout.X_AXIS));
		JPanel sidePanel = new JPanel();
		frame.getContentPane().add(sidePanel, BorderLayout.WEST);
		sidePanel.setLayout(new GridLayout(0, 1, 0, 0));
		
		// Sample Data
		listItems = new DefaultListModel<>();  
		
		// GUI Components
		JList<String> list = new JList<>(listItems);
		list.setFont(new Font("Tahoma", Font.PLAIN, 14));
		scrollPane.setViewportView(list);
		
		query = new JTextField();
		panel.add(query);
		query.setColumns(10);
		
		JButton sendQuery = new JButton("Send");
		panel.add(sendQuery);
		
		JRadioButton rdbtnGeneral = new JRadioButton("General");
		sidePanel.add(rdbtnGeneral);
		
		JRadioButton rdbtnMovie = new JRadioButton("Movie");
		sidePanel.add(rdbtnMovie);
		
		JRadioButton rdbtnCountry = new JRadioButton("Country");
		sidePanel.add(rdbtnCountry);
		
		// Component Actions
		scrollPane.getVerticalScrollBar().addAdjustmentListener(new AdjustmentListener(){
			public void adjustmentValueChanged(AdjustmentEvent e){
				e.getAdjustable().setValue(e.getAdjustable().getMaximum());
			}
		});
		Bot bot = new Bot();
		sendQuery.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				String queries = query.getText();
				listItems.add(listItems.size(), queries);
				//listItems.add(listItems.size(), queries);
				DefaultListModel<String> items = bot.getQueryResult(queries);
				for(int i=0; i < items.size(); i++){
					listItems.add(listItems.size() + i, items.getElementAt(i));
				}
				query.setText("");
			}
		});
	}
}
