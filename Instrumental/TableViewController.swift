//
//  TableViewController.swift
//  Instrumental
//
//  Created by epita on 17/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    @IBOutlet var tabelBiew: UITableView!
    
    
    
    var instrArray = [instra]()
    var clickedIndex : IndexPath?
    
    var images = [UIImage(named:"celesta"), UIImage(named:"flute"), UIImage(named:"guitar"), UIImage(named:"piano"),UIImage(named:"trumpet"), UIImage(named:"tuba"), UIImage(named:"violin")]
    
    let image: UIImage = UIImage(named: "splash")!
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        
        let instr1 = instra(name: "celesta",image: "celesta",subtitle: "Keyboard Instrument",description:"Celesta. Celesta, also spelled celeste, orchestral percussion instrument resembling a small upright piano, patented by a Parisian, Auguste Mustel, in 1886. It consists of a series of small metal bars (and hence is a metallophone) with a keyboard and a simplified piano action in which small felt hammers strike the bars.")
        let instr2 = instra(name: "flute",image: "flute",subtitle: "WoodWind Instrument",description:"The flute is a family of musical instruments in the woodwind group. Unlike woodwind instruments with reeds, a flute is an aerophone or reedless wind instrument that produces its sound from the flow of air across an opening. According to the instrument classification of Hornbostel–Sachs, flutes are categorized as edge-blown aerophones.[1][not in citation given] A musician who plays the flute can be referred to as a flute player, flautist, flutist or, less commonly, fluter or flutenist.")
        let instr3 = instra(name: "guitar",image: "guitar",subtitle: "String instrument",description:"The guitar is a fretted musical instrument that usually has six strings.[1] The sound is projected either acoustically, using a hollow wooden or plastic and wood box (for an acoustic guitar), or through electrical amplifier and a speaker (for an electric guitar). It is typically played by strumming or plucking the strings with the fingers, thumb or fingernails of the right hand or with a pick while fretting (or pressing against the frets) the strings with the fingers of the left hand.")
        let instr4 = instra(name: "piano",image: "piano",subtitle: "Keyboard instrument",description:"The piano is an acoustic, stringed musical instrument invented in Italy by Bartolomeo Cristofori around the year 1700 (the exact year is uncertain), in which the strings are struck by hammers. It is played using a keyboard,[1] which is a row of keys (small levers) that the performer presses down or strikes with the fingers and thumbs of both hands to cause the hammers to strike the strings. The word piano is a shortened form of pianoforte, the Italian term for the early 1700s versions of the instrument, which in turn derives from gravicembalo col piano e forte[2] and fortepiano.")
        let instr5 = instra(name: "trumpet",image: "trumpet",subtitle: "brass Instrument",description:"A trumpet is a brass instrument commonly used in classical and jazz ensembles. The trumpet group contains the instruments with the highest register in the brass family. Trumpet-like instruments have historically been used as signaling devices in battle or hunting, with examples dating back to at least 1500 BC; they began to be used as musical instruments only in the late 14th or early 15th century.[1] Trumpets are used in art music styles, for instance in orchestras, concert bands, and jazz ensembles, as well as in popular music. They are played by blowing air through nearly-closed lips (called the player's embouchure), producing a  sound that starts a standing wave vibration in the air column inside the instrument. Since the late 15th century they have primarily been constructed of brass tubing, usually bent twice into a rounded rectangular shape.")
        let instr6 = instra(name: "tuba",image: "tuba",subtitle: "brass Instrument",description:"The tuba  is the largest and lowest-pitched musical instrument in the brass family. Like all brass instruments, sound is produced by moving air past the lips, causing them to vibrate into a large cupped mouthpiece. It first appeared in the mid-19th century, making it one of the newer instruments in the modern orchestra and concert band. The tuba largely replaced the ophicleide.")
        let instr7 = instra(name: "violin",image: "violin",subtitle: "String Instrument",description:"The violin, also known informally as a fiddle, is a wooden string instrument in the violin family. Most violins have a hollow wooden body. It is the smallest and highest-pitched instrument in the family in regular use. Smaller violin-type instruments are known, including the violino piccolo and the kit violin, but these are virtually unused. The violin typically has four strings tuned in perfect fifths, and is most commonly played by drawing a bow across its strings, though it can also be played by plucking the strings with the fingers (pizzicato) and by striking the strings with the wooden side of the bow (col legno).")
        
        instrArray.append(instr1);
        instrArray.append(instr2);
        instrArray.append(instr3);
        instrArray.append(instr4);
        instrArray.append(instr5);
        instrArray.append(instr6);
        instrArray.append(instr7);
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (instrArray.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
     
        
        
        cell.nameLabel.text = instrArray[indexPath.row].name
        cell.photoImg.image = images[indexPath.row]
        cell.subLabel.text = instrArray[indexPath.row].subtitle
        
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedIndex = indexPath
        self.performSegue(withIdentifier: "link", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC =  segue.destination as! SecondViewController
        newVC.instance=instrArray[(clickedIndex?.row)!]
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
