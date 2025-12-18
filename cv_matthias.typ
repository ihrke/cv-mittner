#import "templates/moderncv/moderncv.typ": *

#show: resume.with(
  author: (
      firstname: "Matthias", 
      lastname: "Mittner",
      email: "matthias.mittner@uit.no", 
      phone: "+47 471 85 978",
      github: "ihrke",
      homepage: "https://ihrke.github.io",
      orcid: "0000-0003-0205-7353",
      birth: "September 1, 1982",
      scholar: "AFB4RYIAAAAJ",
      linkedin: "matthias-mittner-7b046167",
      address: "University of Tromsø, Department of Psychology, 9037 Tromsø, Norway",
      positions: (
"Professor of Cognitive Neuroscience",
      )
  ),
  profile-picture: image("data/pics/matthias_solstrand_rund.jpg", height:4cm),
  date: datetime.today().display())

#v(1em)
I am a professor at the UiT - The arctic university of Norway in Tromsø and at the 
Norwegian University of Science and Technology in Trondheim. My main interests within 
the field of cognitive neuroscience are mind wandering, non-invasive brain
stimulation, decision making, pupillometry and selective attention. I am also
interested in the development of methodological approaches in my field and
enjoy computational methods, cognitive modeling, machine-learning and Bayesian
statistics.

= Education

#resume-entry(
  title: "Dr. phil.",
  location: "University of Frankfurt, Germany",
  date: "21.12.2011",
  description: "Psychology"
)

#resume-item[
  - Thesis: 'Binding and Retrieval of Stimulus-Response Episodes in the Negative Priming Paradigm'
- Grade: Summa cum laude

]

#resume-entry(
  title: "B. Sc.",
  location: "Institute of Computer Science, University of Göttingen, Germany",
  date: "2005/07 - 2008/04",
  description: "Computer Science"
)

#resume-item[
  - Thesis: 'Single Trial Estimation and Timewarped Averaging of Event-Related Potentials'

]

#resume-entry(
  title: "Diploma",
  location: "Department of Psychology, University of Göttingen, Germany",
  date: "2005/07 - 2007/11",
  description: "Psychology"
)

#resume-item[
  - Thesis: 'Negative Priming and Response-Relation: Behavioural and Electroencephalographic Correlates'

]

#resume-entry(
  title: "Student at the University of Oslo",
  location: "Oslo, Norway",
  date: "2004/08 - 2005/06",
  description: "Psychology and Computer Science"
)

#resume-item[
  - Erasmus-Scholarship; studies of computer science and psychology

]

#resume-entry(
  title: "B. Sc. (equivalent)",
  location: "Department of Psychology, University of Göttingen, Germany",
  date: "2002/09 - 2004/07",
  description: "Psychology"
)

#resume-item[
  - Thesis: 'An Adaptive Approach to Memory-Span Tasks'

]

#resume-entry(
  title: "High-School Diploma",
  location: "Alexander von Humboldt Gymnasium, Eberswalde, Germany",
  date: "2002/06",
  description: "Main subjects physics and mathematics"
)




= Employments

#resume-entry(
  title: "Professor II",
  location: "Trondheim, Norway",
  date: "2021/03 - present",
  description: "Quantitative Methods"
)

#resume-item[
  - Department of Psychology, Norwegian University of Science and Technology, Trondheim

]

#resume-entry(
  title: "Professor",
  location: "Tromsø, Norway",
  date: "2020/09 - present",
  description: "Cognitive Neuroscience"
)

#resume-item[
  - Institute of Psychology, University of Tromsø, Tromsø

]

#resume-entry(
  title: "Associate Professor",
  location: "Tromsø, Norway",
  date: "2014/04 - 2020/09",
  description: "Cognitive Neuroscience"
)

#resume-item[
  - Institute of Psychology, University of Tromsø, Tromsø

]

#resume-entry(
  title: "Post-Doctoral Researcher",
  location: "Amsterdam, The Netherlands",
  date: "2013/04 - 03/2014",
  description: "Cognitive Neuroscience"
)

#resume-item[
  - Cognitive Science Center Amsterdam, Universiteit van Amsterdam
- Supervisor: Prof. Birte Forstmann

]

#resume-entry(
  title: "Post-Doctoral Researcher",
  location: "Göttingen, Germany",
  date: "2012/09 - 2013/03",
  description: "Theoretical Neuroscience"
)

#resume-item[
  - Max-Planck Institute for Experimental Medicine, Göttingen
- Supervisor: Prof. Robert Gütig

]

#resume-entry(
  title: "PhD-Student",
  location: "Göttingen, Germany",
  date: "2008/10 - 2012/01",
  description: "Computational Neuroscience"
)

#resume-item[
  - Max-Planck Institute for Dynamics and Self-Organization, Göttingen
- Göttingen Graduate School for Neurosciences and Molecular Biosciences (GGNB)
- Doctoral Program: Theoretical and Computational Neuroscience (PTCN)
- Supervisor: Prof. Marcus Hasselhorn

]

#resume-entry(
  title: "Guest Researcher",
  location: "Göttingen, Germany",
  date: "2008/03 - 2008/09",
  description: "Computational Neuroscience"
)

#resume-item[
  - Max-Planck Institute for Dynamics and Self-Organization, Göttingen
- Project: cognitive modelling and data-mining (EEG)

]

#resume-entry(
  title: "Guest Researcher",
  location: "Saarbrücken, Germany",
  date: "2007/11 - 2008/02",
  description: "Computer graphics"
)

#resume-item[
  - Max-Planck Institute for Informatics, Saarbrücken
- Project: optical modelling and psychophysics

]

#resume-entry(
  title: "Research Assistant",
  location: "Göttingen, Germany",
  date: "2005/09 - 2007/10",
  description: "Computational Neuroscience"
)

#resume-item[
  - Bernstein Center for Computational Neuroscience, Göttingen
- Project: cognitive modelling; psychophysical experiments

]

#resume-entry(
  title: "Student Assistant",
  location: "Göttingen, Germany",
  date: "2003/09 - 2004/08",
  description: "Psychology"
)

#resume-item[
  - Department for Developmental Psychology, University of Göttingen
- Duties: computer administration and development of experimental software

]


= Publications

== Books

#pub-item[
  (76) Mehmetoglu, M. & _Mittner, M._ (2021). _Applied Statistics Using R_. SAGE. https://tinyurl.com/svddmm
]
#pub-item[
  (75) Mehmetoglu, M. & _Mittner, M._ (2020). _Innføring i R for statistiske dataanalyser_. Universitetsforlaget. https://tinyurl.com/wx4xbfpc
]

== Preprints

#pub-item[
  (74) Aasen, S. R., Babiker, S. M. E., Vangen, A. M. K., Haugan, S. B., Sandell, S. A. O., Saksvik-Lehouillier, I., Kam, J., _Mittner, M._, & Csifcsák, G. (2025). The Effects of Partial Sleep Deprivation on Mind Wandering, Executive Performance and Affect. _Preprint_. https://osf.io/kmqfz_v3/ (submitted)
]

== Journal articles

#pub-item[
  (73) Csifcsák, G. & _Mittner, M._ (2026). Reward Processing under Illusion of Control: The Sensitivity of the Feedback-Related Negativity to Prediction Errors Is Not Altered When Random Outcomes Are Perceived as the Consequence of One's Own Actions. _International Journal of Psychophysiology_, _219_, 113300. https://doi.org/10.1016/j.ijpsycho.2025.113300
]
#pub-item[
  (72) Alexandersen, A., Aasen, S. R., Csifcsák, G., & _Mittner, M._ (2025). Evidence for the Efficacy of Theta-Burst Stimulation above the Angular Gyrus for Reducing Mind Wandering Propensity: A Successful Pre-Registered Study. _Cortex_. https://doi.org/10.1016/j.cortex.2025.07.006
]
#pub-item[
  (71) Alexandersen, A., Dahlberg, K., Csifcsák, G., & _Mittner, M._ (2025). Unravelling the Threads of Thought: Probing the Impact of Contextual Factors on Mind Wandering. _Consciousness and Cognition_, _131_, 103870. https://doi.org/10.1016/j.concog.2025.103870
]
#pub-item[
  (70) Babiker, S., Luzzi, F., _Mittner, M._, & Csifcsák, G. (2025). The Interplay Between Experimental Heat Pain and Noninvasive Stimulation of the Medial Prefrontal Cortex on Reinforcement Learning With Manipulated Outcome Contingencies. _European Journal of Neuroscience_, _61_(7), e70089. https://doi.org/10.1111/ejn.70089
]
#pub-item[
  (69) Drevland, R. N., Aasen, S. R., Csifcsák, G., & _Mittner, M._ (2025). Reducing Mind Wandering Using Continuous Theta Burst Stimulation. _Transcranial Magnetic Stimulation_, 100181. https://doi.org/10.1016/j.transm.2025.100181
]
#pub-item[
  (68) Mehmetoglu, M., Määttänen, I., & _Mittner, M._ (2025). The Link Between Mate Value Discrepancy and Relationship Satisfaction—An Empirical Examination Using Response Surface Analysis. _Behavioral Sciences_. https://doi.org/10.3390/bs15081131
]
#pub-item[
  (67) _Mittner, M._ & Groot, J. M. (2025). A Novel Method for Modeling Tonic and Phasic Pupil Dynamics in Humans. _Behavior Research Methods_, _57_(9), 233. https://doi.org/10.3758/s13428-025-02755-7
]
#pub-item[
  (66) Schultheiss, D. L., Turi, Z., Marmavula, S., Reinacher, P. C., Demerath, T., Straehle, J., Boedecker, J., _Mittner, M._, & Vlachos, A. (2025). Efficient Prospective Electric Field-Informed Localization of Motor Cortical Targets of Transcranial Magnetic Stimulation. _Imaging Neuroscience_. https://doi.org/10.1162/IMAG.a.1056
]
#pub-item[
  (65) Vékony, T., Farkas, B. C., Brezóczki, B., _Mittner, M._, Csifcsák, G., Simor, P., & Németh, D. (2025). Mind Wandering Enhances Statistical Learning. _iScience_, _28_(2). https://doi.org/10.1016/j.isci.2024.111703
]
#pub-item[
  (64) Aasen, S. R., Drevland, R. N., Csifcsák, G., & _Mittner, M._ (2024). Increasing Mind Wandering with Accelerated Intermittent Theta Burst Stimulation over the Left Dorsolateral Prefrontal Cortex. _Neuropsychologia_, _204_, 109008. https://doi.org/10.1016/j.neuropsychologia.2024.109008
]
#pub-item[
  (63) Groot, J. M., Miletic, S., Isherwood, S. J., Tse, D. H. Y., Habli, S., Håberg, A. K., Bazin, P., _Mittner, M._, & Forstmann, B. U. (2024). A High-Resolution 7 Tesla Resting-State fMRI Dataset Optimized for Studying the Subcortex. _Data in Brief_.
]
#pub-item[
  (62) Mehmetoglu, M., Määttänen, I., & _Mittner, M._ (2024). Testing Sexual Strategy Theory in Norway. _Behavioral Sciences_, _14_(6), 438. https://doi.org/10.3390/bs14060438
]
#pub-item[
  (61) Sluppaug, K. S., Mehmetoglu, M., & _Mittner, M._ (2024). Modsem: An R Package for Estimating Latent Interactions and Quadratic Effects. _Structural Equation Modeling: A Multidisciplinary Journal_, _0_(0), 1-13. https://doi.org/10.1080/10705511.2024.2417409
]
#pub-item[
  (60) Groot, J. M., Miletic, S., Isherwood, S. J., Tse, D. H., Habli, S., Håberg, A. K., Forstmann, B. U., Bazin, P., & _Mittner, M._ (2023). Echoes from Intrinsic Connectivity Networks in the Subcortex. _Journal of Neuroscience_. https://doi.org/10.1523/JNEUROSCI.1020-23.2023
]
#pub-item[
  (59) Kreis, I., Zhang, L., _Mittner, M._, Syla, L., Lamm, C., & Pfuhl, G. (2023). Aberrant Uncertainty Processing Is Linked to Psychotic-like Experiences, Autistic Traits, and Is Reflected in Pupil Dilation during Probabilistic Learning. _Cognitive, Affective, \& Behavioral Neuroscience_. https://doi.org/10.3758/s13415-023-01088-2
]
#pub-item[
  (58) Nawani, H., _Mittner, M._, & Csifcsák, G. (2023). Modulation of Mind Wandering Using Transcranial Direct Current Stimulation: A Meta-Analysis Based on Electric Field Modeling. _NeuroImage_, 120051. https://doi.org/10.1016/j.neuroimage.2023.120051
]
#pub-item[
  (57) Ørbo, M. C., Grønli, O. K., Larsen, C., Vangberg, T. R., Friborg, O., Turi, Z., _Mittner, M._, Csifcsak, G., & Aslaksen, P. M. (2023). The Antidepressant Effect of Intermittent Theta Burst Stimulation (iTBS): Study Protocol for a Randomized Double-Blind Sham-Controlled Trial. _Trials_, _24_(1), 627. https://doi.org/10.1186/s13063-023-07674-6
]
#pub-item[
  (56) Rasmussen, I. D., _Mittner, M._, Boayue, N. M., Csifcsák, G., & Aslaksen, P. M. (2023). Tracking the Current in the Alzheimer's Brain - Systematic Differences between Patients and Healthy Controls in the Electric Field Induced by tDCS. _Neuroimage: Reports_, _3_(2), 100172. https://doi.org/10.1016/j.ynirp.2023.100172
]
#pub-item[
  (55) Sedlinska, T., Bolte, L., Melsæter, E., _Mittner, M._, & Csifcsák, G. (2023). Transcranial Direct-Current Stimulation Enhances Pavlovian Tendencies during Intermittent Loss of Control. _Frontiers in Psychiatry_, _14_. https://doi.org/10.3389/fpsyt.2023.1164208
]
#pub-item[
  (54) Alexandersen, A., Csifcsák, G., Groot, J., & _Mittner, M._ (2022). The Effect of Transcranial Direct Current Stimulation on the Interplay between Executive Control, Behavioral Variability and Mind Wandering: A Registered Report. _Neuroimage: Reports_, _2_(3), 100109. https://doi.org/10.1016/j.ynirp.2022.100109
]
#pub-item[
  (53) Groot, J. M., Csifcsák, G., Wientjes, S., Forstmann, B. U., & _Mittner, M._ (2022). Catching Wandering Minds with Tapping Fingers: Neural and Behavioral Insights into Task-unrelated Cognition. _Cerebral Cortex_, bhab494. https://doi.org/10.1093/cercor/bhab494
]
#pub-item[
  (52) Hawkins, G. E., _Mittner, M._, Forstmann, B. U., & Heathcote, A. (2022). Self-Reported Mind Wandering Reflects Executive Control and Selective Attention. _Psychonomic Bulletin \& Review_. https://doi.org/10.3758/s13423-022-02110-3
]
#pub-item[
  (51) Kam, J. W. Y., _Mittner, M._, & Knight, R. T. (2022). Mind-Wandering: Mechanistic Insights from Lesion, tDCS, and iEEG. _Trends in Cognitive Sciences_, _0_(0). https://doi.org/10.1016/j.tics.2021.12.005
]
#pub-item[
  (50) Csifcsák, G., Bjørkøy, J., Kuyateh, S., Reithe, H., & _Mittner, M._ (2021). Transcranial Direct Current Stimulation above the Medial Prefrontal Cortex Facilitates Decision-Making Following Periods of Low Outcome Controllability. _eNeuro_. https://doi.org/10.1523/ENEURO.0041-21.2021
]
#pub-item[
  (49) Groot, J. M., Boayue, N. M., Csifcsák, G., Boekel, W., Huster, R., Forstmann, B. U., & _Mittner, M._ (2021). Probing the Neural Signature of Mind Wandering with Simultaneous fMRI-EEG and Pupillometry. _NeuroImage_, _224_, 117412. https://doi.org/10.1016/j.neuroimage.2020.117412
]
#pub-item[
  (48) Kreis, I., Biegler, R., Tjelmeland, H., _Mittner, M._, Reitan, S. K., & Pfuhl, G. (2021). Overestimation of Volatility in Schizophrenia and Autism? A Comparative Study Using a Probabilistic Reasoning Task. _PLOS ONE_, _16_(1), e0244975. https://doi.org/10.1371/journal.pone.0244975
]
#pub-item[
  (47) Rasmussen, I. D., Boayue, N. M., _Mittner, M._, Bystad, M., Grønli, O. K., Vangberg, T. R., Csifcsák, G., & Aslaksen, P. M. (2021). High-Definition Transcranial Direct Current Stimulation Improves Delayed Memory in Alzheimer’s Disease Patients: A Pilot Study Using Computational Modeling to Optimize Electrode Position. _Journal of Alzheimer's Disease_, _83_(2). https://doi.org/10.3233/JAD-210378
]
#pub-item[
  (46) Turi, Z., Lenz, M., Paulus, W., _Mittner, M._, & Vlachos, A. (2021). Selecting Stimulation Intensity in Repetitive Transcranial Magnetic Stimulation Studies: A Systematic Review between 1991 and 2020. _European Journal of Neuroscience_, _n/a_(n/a). https://doi.org/10.1111/ejn.15195
]
#pub-item[
  (45) Zmeykina, E., _Mittner, M._, Paulus, W., & Turi, Z. (2021). Short-Lived Alpha Power Suppression Induced by Low-intensity Arrhythmic rTMS. _Neuroscience_, _466_, 1-9. https://doi.org/10.1016/j.neuroscience.2021.04.027
]
#pub-item[
  (44) Boayue, N. M., Csifcsák, G., Kreis, I. V., Schmidt, C., Finn, I., Vollsund, A. E. H., & _Mittner, M._ (2020). The Interplay between Executive Control, Behavioral Variability and Mind Wandering: Insights from a High-Definition Transcranial Direct-Current Stimulation Study. _European Journal of Neuroscience_, _n/a_(n/a). https://doi.org/10.1111/ejn.15049
]
#pub-item[
  (43) _Mittner, M._ (2020). Pypillometry: A Python Package for Pupillometric Analyses. _Journal of Open Source Software_, _5_(51), 2348. https://doi.org/10.21105/joss.02348
]
#pub-item[
  (42) Turi, Z., _Mittner, M._, Lehr, A., Bürger, H., Antal, A., & Paulus, W. (2020). Theta-Gamma Cross-Frequency Transcranial Alternating Current Stimulation over the Trough Impairs Cognitive Control. _eNeuro_. https://doi.org/10.1523/ENEURO.0126-20.2020
]
#pub-item[
  (41) Zmeykina, E., _Mittner, M._, Paulus, W., & Turi, Z. (2020). Weak rTMS-induced Electric Fields Produce Neural Entrainment in Humans. _Scientific Reports_, _10_(1), 11994. https://doi.org/10.1038/s41598-020-68687-8
]
#pub-item[
  (40) Boayue, N. M., Csifcsák, G., Aslaksen, P., Turi, Z., Antal, A., Groot, J., Hawkins, G. E., Forstmann, B., Opitz, A., Thielscher, A., & _Mittner, M._ (2019). Increasing Propensity to Mind-Wander by Transcranial Direct Current Stimulation? A Registered Report. _The European Journal of Neuroscience_. https://doi.org/10.1111/ejn.14347
]
#pub-item[
  (39) Csifcsák, G., Boayue, N. M., Aslaksen, P. M., Turi, Z., Antal, A., Groot, J., Hawkins, G. E., Forstmann, B. U., Opitz, A., Thielscher, A., & _Mittner, M._ (2019). Commentary: “Transcranial Stimulation of the Frontal Lobes Increases Propensity of Mind-Wandering without Changing Meta-Awareness”. _Frontiers in Psychology_, _10_. https://doi.org/10.3389/fpsyg.2019.00130
]
#pub-item[
  (38) Csifcsák, G., Melsæter, E., & _Mittner, M._ (2019). Intermittent Absence of Control during Reinforcement Learning Interferes with Pavlovian Bias in Action Selection. _Journal of Cognitive Neuroscience_, 1-18. https://doi.org/10.1162/jocn_a_01515
]
#pub-item[
  (37) Hawkins, G. E., _Mittner, M._, Forstmann, B. U., & Heathcote, A. (2019). Modeling Distracted Performance. _Cognitive Psychology_, _112_, 48-80. https://doi.org/10.1016/j.cogpsych.2019.05.002
]
#pub-item[
  (36) Hetland, A., Kjelstrup, E., _Mittner, M._, & Vitterso, J. (2019). The Thrill of Speedy Descents: A Pilot Study on Differences in Facially Expressed Online Emotions and Retrospective Measures of Emotions During a Downhill Mountain-Bike Descent. _Frontiers in Psychology_, _10_. https://doi.org/10.3389/fpsyg.2019.00566
]
#pub-item[
  (35) Turi, Z., Csifcsák, G., Boayue, N. M., Aslaksen, P., Antal, A., Paulus, W., Groot, J., Hawkins, G. E., Forstmann, B., Opitz, A., Thielscher, A., & _Mittner, M._ (2019). Blinding Is Compromised for Transcranial Direct Current Stimulation at 1 mA for 20 Min in Young Healthy Adults. _European Journal of Neuroscience_, _0_(0). https://doi.org/10.1111/ejn.14403
]
#pub-item[
  (34) Boayue, N. M., Csifcsák, G., Puonti, O., Thielscher, A., & _Mittner, M._ (2018). Head Models of Healthy and Depressed Adults for Simulating the Electric Fields of Non-Invasive Electric Brain Stimulation. _F1000Research_, _7_, 704. https://doi.org/10.12688/f1000research.15125.2
]
#pub-item[
  (33) Csifcsák, G., Boayue, N. M., Puonti, O., Thielscher, A., & _Mittner, M._ (2018). Effects of Transcranial Direct Current Stimulation for Treating Depression: A Modeling Study. _Journal of Affective Disorders_, _234_, 164-173. https://doi.org/10.1016/j.jad.2018.02.077
]
#pub-item[
  (32) Hetland, A., Vittersø, J., Oscar Bø Wie, S., Kjelstrup, E., _Mittner, M._, & Dahl, T. I. (2018). Skiing and Thinking About It: Moment-to-Moment and Retrospective Analysis of Emotions in an Extreme Sport. _Frontiers in Psychology_, _9_(971). https://doi.org/10.3389/fpsyg.2018.00971
]
#pub-item[
  (31) Turi, Z., Schäfer, S. A., Antal, A., Paulus, W., & _Mittner, M._ (2018). Data from ‘Placebo Enhances Reward Learning in Healthy Individuals’. _Journal of Open Psychology Data_, _6_(1), 2. https://doi.org/10.5334/jopd.34
]
#pub-item[
  (30) Turi, Z., Bjørkedal, E., Gunkel, L., Antal, A., Paulus, W., & _Mittner, M._ (2018). Evidence for Cognitive Placebo and Nocebo Effects in Healthy Individuals. _Scientific Reports_, _8_(1), 17443. https://doi.org/10.1038/s41598-018-35124-w
]
#pub-item[
  (29) Csifcsák, G. & _Mittner, M._ (2017). Linking Brain Networks and Behavioral Variability to Different Types of Mind-Wandering. _Proceedings of the National Academy of Sciences of the United States of America_, _114_(30). https://doi.org/10.1073/pnas.1705108114
]
#pub-item[
  (28) Hawkins, G. E., _Mittner, M._, Forstmann, B. U., & Heathcote, A. (2017). On the Efficiency of Neurally-Informed Cognitive Models to Identify Latent Cognitive States. _Journal of Mathematical Psychology_, _76_, 142-155. https://doi.org/10.1016/j.jmp.2016.06.007
]
#pub-item[
  (27) Turi, Z., _Mittner, M._, Paulus, W., & Antal, A. (2017). Placebo Intervention Enhances Reward Learning in Healthy Individuals. _Scientific Reports_, _7_, 41028. https://doi.org/10.1038/srep41028
]
#pub-item[
  (26) _Mittner, M._, Hawkins, G. E., Boekel, W., & Forstmann, B. U. (2016). A Neural Model of Mind Wandering. _Trends in Cognitive Sciences_, _20_(8), 570-578. https://doi.org/10.1016/j.tics.2016.06.004
]
#pub-item[
  (25) Rodríguez-Aranda, C., _Mittner, M._, & Vasylenko, O. (2016). Association Between Executive Functions, Working Memory, and Manual Dexterity in Young and Healthy Older Adults: An Exploratory Study. _Perceptual and Motor Skills_, _122_(1), 165-192. https://doi.org/10.1177/0031512516628370
]
#pub-item[
  (24) Hawkins, G. E., Mittner, M., Boekel, W., Heathcote, A., & Forstmann, B. U. (2015). Toward a Model-Based Cognitive Neuroscience of Mind Wandering. _Neuroscience_, _310_, 290-305. https://doi.org/10.1016/j.neuroscience.2015.09.053
]
#pub-item[
  (23) Høifødt, R. S., _Mittner, M._, Lillevoll, K., Katla, S. K., Kolstrup, N., Eisemann, M., Friborg, O., & Waterloo, K. (2015). Predictors of Response to Web-Based Cognitive Behavioral Therapy With High-Intensity Face-to-Face Therapist Guidance for Depression: A Bayesian Analysis. _Journal of Medical Internet Research_, _17_(9), e197. https://doi.org/10.2196/jmir.4351
]
#pub-item[
  (22) Turi, Z., _Mittner, M._, Opitz, A., Popkes, M., Paulus, W., & Antal, A. (2015). Transcranial Direct Current Stimulation over the Left Prefrontal Cortex Increases Randomness of Choice in Instrumental Learning. _Cortex_, _63_, 145-154. https://doi.org/10.1016/j.cortex.2014.08.026
]
#pub-item[
  (21) _Mittner, M._, Behrendt, J., Menge, U., Titz, C., & Hasselhorn, M. (2014). Response-Retrieval in Identity Negative Priming Is Modulated by Temporal Discriminability. _Frontiers in Psychology_, _5_, 621. https://doi.org/10.3389/fpsyg.2014.00621
]
#pub-item[
  (20) _Mittner, M._, Boekel, W., Tucker, A. M., Turner, B. M., Heathcote, A., & Forstmann, B. U. (2014). When the Brain Takes a Break: A Model-Based Analysis of Mind Wandering. _Journal of Neuroscience_, _34_(49), 16286-16295. https://doi.org/10.1523/JNEUROSCI.2062-14.2014
]
#pub-item[
  (19) Ihrke, M., Behrendt, J., Schrobsdorff, H., Visser, I., & Hasselhorn, M. (2013). Negative Priming Persists in the Absence of Response-Retrieval. _Experimental Psychology_, _60_(1), 12-21. https://doi.org/10.1027/1618-3169/a000169
]
#pub-item[
  (18) _Mittner, M._ (2013). Functional Integration of Large-Scale Brain Networks. _Journal of Neuroscience_, _33_(48), 18710-18711. https://doi.org/10.1523/JNEUROSCI.4084-13.2013
]
#pub-item[
  (17) Schrobsdorff, H., Ihrke, M., Behrendt, J., Herrmann, J. M., & Hasselhorn, M. (2012). Identity Negative Priming: A Phenomenon of Perception, Recognition or Selection?. _PloS One_, _7_(3), e32946. https://doi.org/10.1371/journal.pone.0032946
]
#pub-item[
  (16) Schrobsdorff, H., Ihrke, M., Behrendt, J., Hasselhorn, M., & Herrmann, J. M. (2012). Inhibition in the Dynamics of Selective Attention: An Integrative Model for Negative Priming. _Frontiers in Psychology_, _3_, 491. https://doi.org/10.3389/fpsyg.2012.00491
]
#pub-item[
  (15) Ihrke, M. & Behrendt, J. (2011). Automatic Generation of Randomized Trial Sequences for Priming Experiments. _Frontiers in Psychology_, _2_, 225. https://doi.org/10.3389/fpsyg.2011.00225
]
#pub-item[
  (14) Ihrke, M., Schrobsdorff, H., & Herrmann, J. M. (2011). Recurrence-Based Estimation of Time-Distortion Functions for ERP Waveform Reconstruction. _International Journal of Neural Systems_, _21_(1), 65-78. https://doi.org/10.1142/S0129065711002651
]
#pub-item[
  (13) Ihrke, M., Behrendt, J., Schrobsdorff, H., Michael Herrmann, J., & Hasselhorn, M. (2011). Response-Retrieval and Negative Priming: Encoding- and Retrieval-Specific Effects.. _Experimental Psychology_, _58_(2), 154-161. https://doi.org/10.1027/1618-3169/a000081
]
#pub-item[
  (12) Ihrke, M. & Brennen, T. (2011). Sharing One Biographical Detail Elicits Priming between Famous Names: Empirical and Computational Approaches. _Frontiers in Psychology_, _2_(75). https://doi.org/10.3389/fpsyg.2011.00075
]
#pub-item[
  (11) Behrendt, J., Gibbons, H., Schrobsdorff, H., Ihrke, M., Herrmann, J. M., & Hasselhorn, M. (2010). Event-Related Brain Potential Correlates of Identity Negative Priming from Overlapping Pictures. _Psychophysiology_, _47_(5), 921-930. https://doi.org/10.1111/j.1469-8986.2010.00989.x
]
#pub-item[
  (10) Ritschel, T., Ihrke, M., Frisvad, J. R., Coppens, J., Myszkowski, K., & Seidel, H. (2009). Temporal Glare: Real-Time Dynamic Simulation of the Scattering in the Human Eye. _Computer Graphics Forum_, _28_(2), 183-192. https://doi.org/10.1111/j.1467-8659.2009.01357.x
]
#pub-item[
  (9) Ritschel, T., Smith, K., Ihrke, M., Grosch, T., Myszkowski, K., & Seidel, H. (2008). 3D Unsharp Masking for Scene Coherent Enhancement. _ACM Transactions on Graphics_, _27_(3), 90:1-90:8. https://doi.org/10.1145/1399504.1360689
]
#pub-item[
  (8) Schrobsdorff, H., Ihrke, M., Kabisch, B., Behrendt, J., Hasselhorn, M., & Herrmann, J. M. (2007). A Computational Approach to Negative Priming. _Connection Science_, _19_(3), 203-221. https://doi.org/10.1080/09540090701507823
]

== Book chapters

#pub-item[
  (7) Csifcsák, G., Forstmann, B., & _Mittner, M._ (2021). Transcranial stimulation and decision-making. In Wassermann, E. M., Peterchev, A. V., Ziemann, U., Lisanby, S. H., Siebner, H. R., & Walsh, V. (Ed.), _The Oxford Handbook of Transcranial Stimulation_. https://www.oxfordhandbooks.com/view/10.1093/oxfordhb/9780198832256.001.0001/oxfordhb-9780198832256
]
#pub-item[
  (6) Ihrke, M., Schrobsdorff, H., & Herrmann, J. M. (2009). Denoising and Averaging Techniques for Electrophysiological Data. In Velazquez, J. L. P. & Wennberg, R. (Ed.), _Coordinated Activity in the Brain: Measurements and Relevance to Brain Function and Behavior_ (pp. 165-189). Springer New York. https://doi.org/10.1007/978-0-387-93797-7_9
]

== Conference proceedings

#pub-item[
  (5) Schrobsdorff, H., Ihrke, M., & Herrmann, J. M. (2013). Modeling Structure and Dynamics of Selective Attention. In _Biologically Inspired Cognitive Architectures 2012_ (pp. 287-295). https://doi.org/10.1007/978-3-642-34274-5_50
]
#pub-item[
  (4) Ihrke, M., Ritschel, T., Smith, K., Grosch, T., Myszkowski, K., & Seidel, H. (2009). A perceptual evaluation of 3D unsharp masking. In _Human Vision and Electronic Imaging XIV_ (pp. 72400R). https://doi.org/10.1117/12.809026
]
#pub-item[
  (3) Ihrke, M., Schrobsdorff, H., & Herrmann, J. M. (2009). Recurrence-Based Synchronization of Single Trials for EEG-Data Analysis. In _Intelligent Data Engineering and Automated Learning - IDEAL 2009_ (pp. 118-125). https://doi.org/10.1007/978-3-642-04394-9_15
]
#pub-item[
  (2) Ihrke, M., Schrobsdorff, H., & Herrmann, J. M. (2008). Compensation for Speed-of-Processing Effects in EEG-Data Analysis. In _Intelligent Data Engineering and Automated Learning – IDEAL 2008_ (pp. 354-361). https://doi.org/10.1007/978-3-540-88906-9_45
]
#pub-item[
  (1) Yoshida, A., Ihrke, M., Mantiuk, R., & Seidel, H. (2008). Brightness of the Glare Illusion. In _Proceedings of the 5th Symposium on Applied Perception in Graphics and Visualization_ (pp. 83-90). https://doi.org/10.1145/1394281.1394297
]


= Grants and Scholarships
== Research Grants

#dated-entry(
  title: "UiT Talent Infrastructure",
  date: "2025",
  amount: "4.6 million NOK, ≈ 420,000 EUR",
  description: [
- COCAMAP: Cognitive causal mapping: Stimulation-based brain-mapping of cognitive functions
- acquisition of a robotic system for cognitive causal mapping
])
#dated-entry(
  title: "MSCA-PF (host)",
  date: "2024/25 - 2026/27",
  amount: "2.4 million NOK, ≈ 210,000 EUR",
  description: [
- Controlling the flow of attention: Transition dynamics of attention and distraction across external and internal domains (MIND-FLOW)
- 2 year post-doc project
])
#dated-entry(
  title: "UiT High Score/UiT Talent",
  date: "2024 - 2027",
  amount: "3 million NOK, ≈ 350,000 EUR",
  description: [
- Neural mechanisms of off-focus cognition
- 3 year full-time post-doc project
])
#dated-entry(
  title: "HelseNord project PFP1237_15",
  date: "2015 - 2018",
  amount: "3 million NOK (≈ 350,000 EUR)",
  description: [
- Optimizing transcranial direct current stimulation for treatment of chronic pain and depression
- 3 year full-time post-doc project
])
#dated-entry(
  title: "PhD candidate from Health faculty, UiT",
  date: "2016 - 2020",
  amount: "",
  description: [
- Neural and computational correlates of mind wandering
- 4 year PhD project
])

== Personal Scholarships and Awards

#dated-entry(
  title: "Incentive grant",
  date: "2017",
  amount: "200k NOK, ≈ 18,000 EUR",
  description: [
- Grant awarded by the Faculty of Health for excellent grades in external applications
])
#dated-entry(
  title: "Incentive grant",
  date: "2016",
  amount: "200k NOK, ≈ 18,000 EUR",
  description: [
- Grant awarded by the Faculty of Health for excellent grades in external applications
])
#dated-entry(
  title: "Research Prize",
  date: "2015",
  amount: "",
  description: [
- Research prize from the Institute for Psychology
])
#dated-entry(
  title: "GGNB Fellowship",
  date: "2009/05 - 2012/01",
  amount: "",
  description: [
- Full-time PhD Scholarship offered by Göttingen Graduate School for Neurosciences and Molecular Biosciences (GGNB)
])
#dated-entry(
  title: "GGNB Bridging Fund Scholarship",
  date: "2008/10 - 2008/12",
  amount: "",
  description: [
- Scholarship offered by Göttingen Graduate School for Neurosciences and Molecular Biosciences (GGNB)
])
#dated-entry(
  title: "DFG Scholarship",
  date: "2009/01 - 2009/04",
  amount: "",
  description: [
- Full-time Scholarship "Passungsverhältnisse schulischen Lernens: Verstehen und Optimieren"
])
#dated-entry(
  title: "Erasmus Scholarship",
  date: "2004/07 - 2005/08",
  amount: "",
  description: [
- Scholarship for studies abroad
])

= Presentations

== Invited Presentations

#presentation-item(
  conference: "Cognitive Neuroscience Meeting (CNS)",
  location: "Boston, US",
  date: "2025",
  title: "Selected invited presentations")

#presentation-item(
  conference: "Seminar series Max-Planck Institute for Human Development",
  location: "Berlin, Germany",
  date: "2025",
  title: "Invited seminar")

#presentation-item(
  conference: "IMBIT seminar series, University of Freiburg",
  location: "Freiburg, Germany",
  date: "2025",
  title: "Invited seminar")

#presentation-item(
  conference: "Institute du Cerveau",
  location: "Paris, France",
  date: "2024",
  title: "Invited workshop lecturer")

#presentation-item(
  conference: "Network Modeling for Transcranial Magnetic Stimulation (NEMO-TMS)",
  location: "Freiburg, Germany",
  date: "2023",
  title: "Invited presentation")

#presentation-item(
  conference: "University of Oslo",
  location: "Oslo, Norway",
  date: "2023",
  title: "Invited symposium")

#presentation-item(
  conference: "International Conference on Cognitive Neuroscience (ICON)",
  location: "Helsinki, Finland",
  date: "2022",
  title: "Invited presentation")

#presentation-item(
  conference: "Laboratoire de Sciences Cognitives et Psycholinguistique, École Normale Supérieure",
  location: "Paris, France",
  date: "2022",
  title: "Invited presentation")

#presentation-item(
  conference: "Organization for Human Brain Mapping (OHBM)",
  location: "Online",
  date: "2021",
  title: "Invited presentation")

#presentation-item(
  conference: "NRSN National Neuroscience Symposium",
  location: "Norway",
  date: "2021",
  title: "Invited presentation")

#presentation-item(
  conference: "fMRI 20-year Anniversary Seminar, University of Trondheim",
  location: "Trondheim, Norway",
  date: "2019",
  title: "Invited presentation")

#presentation-item(
  conference: "The Role of Neural Oscillations in Human Cognition (Summer School)",
  location: "Uslar, Germany",
  date: "2017",
  title: "Invited presentation")

#presentation-item(
  conference: "Mind-Wandering Symposium, University of Amsterdam",
  location: "Amsterdam, The Netherlands",
  date: "2016",
  title: "Invited presentation")

#presentation-item(
  conference: "International Conference on Cognitive Neuroscience (ICON)",
  location: "Brisbane, Australia",
  date: "2014",
  title: "Invited presentation")






= Supervision

== Post-doctoral researchers

#student-entry(
  name: [Sam Verschooren],
  year: "2025",
  title: "Controlling the flow of attention: Transition dynamics of attention and distraction across external and internal domains",
  role: none,
  url: none)
#student-entry(
  name: [Josephine Groot],
  year: "2024",
  title: "Neural mechanisms of off-focus cognition",
  role: none,
  url: none)
#student-entry(
  name: [Hema Nawani],
  year: "2020-2023",
  title: "ADHD and mind-wandering",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: none)
#student-entry(
  name: [Gábor Csifcsák],
  year: "2016-2019",
  title: "Optimizing transcranial direct current stimulation for treatment of chronic pain and depression",
  role: none,
  url: none)

#v(0.5em)
== PhD students

#student-entry(
  name: [Steffen Rygg Aasen],
  year: "2024",
  title: "Executive functions and mind wandering",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: none)
#student-entry(
  name: [Andreas Alexandersen],
  year: "2023",
  title: "Unraveling the cognitive and neural mechanisms of mind wandering using transcranial electric stimulation",
  role: none,
  url: none)
#student-entry(
  name: [Maren Angel Christensen],
  year: "2022",
  title: "Structural differences in brain structure after trauma: An analysis based on the HUNT study and the Tromsø Study",
  role: none,
  url: none)
#student-entry(
  name: [Malin Gullsvåg],
  year: "2020",
  title: "The relation between respiratory mechanisms and cognitive abilities in adolescence and adulthood",
  role: "co-supervisor, main supervisor: Claudia Rodríguez-Aranda",
  url: none)
#student-entry(
  name: [Josephine Groot],
  year: "2018-2023",
  title: "Neural mechanisms of off-focus cognition",
  role: none,
  url: none)
#student-entry(
  name: [Nya Mehnwolo Boayue],
  year: "2016-2020",
  title: "Neural and computational correlates of mind wandering",
  role: none,
  url: none)
#student-entry(
  name: [Isabel Viola Kreis],
  year: "2017-2021",
  title: "Too precise or too imprecise: which parameter is gone awry in autism and psychosis",
  role: "co-supervisor, main supervisor: Gerit Pfuhl",
  url: none)
#student-entry(
  name: [Zsolt Turi],
  year: "2011-2015",
  title: "Methodological and cognitive aspects of transcranial electrical stimulation",
  role: "co-supervisor, main supervisor: Andrea Antal",
  url: none)
#student-entry(
  name: [Wouter Boekel],
  year: "2013-2017",
  title: "When the brain takes a break: Neural correlates of mind-wandering",
  role: "co-supervisor, main supervisor: Birte Forstmann",
  url: none)

#v(0.5em)
== Research Line students (forskerlinje)

#student-entry(
  name: [Almina Selimovic],
  year: "2025",
  title: "Through the lens of attention: Factors that systematically modulate pupil dilation",
  role: "co-supervisor, main supervisor: Josephine Groot",
  url: none)
#student-entry(
  name: [Mathilde Aursand],
  year: "2025",
  title: "Being with the body: The impact of meditation on interoceptive attention",
  role: "co-supervisor, main supervisor: Sam Verschooren",
  url: none)
#student-entry(
  name: [Ragnhild Drevland],
  year: "2021-2024",
  title: "The effect of cTBS over the left AG on mind wandering",
  role: none,
  url: "https://osf.io/vjsm7")
#student-entry(
  name: [Steffen Rygg Aasen],
  year: "2021-2024",
  title: "The effect of iTBS over the left DLPFC on mind wandering",
  role: none,
  url: "https://osf.io/txpu2")
#student-entry(
  name: [Samy Babiker],
  year: "2021-2024",
  title: "Modulating loss of control using rTMS during chronic pain",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: "https://osf.io/r74uk")
#student-entry(
  name: [Andreas Alexandersen],
  year: "2020-2022",
  title: "Investigating the relationship between executive control and mind-wandering using transcranial direct current stimulation",
  role: none,
  url: none)

#v(0.5em)
== Master students

#student-entry(
  name: [Tim Cools],
  year: "2023-2024",
  title: "Does mind wandering modulate the relationship between gaze and stimulus value?",
  role: none,
  url: "https://osf.io/ca95r")
#student-entry(
  name: [Kjell Slupphaug],
  year: "2023-2024",
  title: "Moderation and interaction effects in structural equation modeling",
  role: "co-supervisor, main supervisor: Mehmet Mehmetoglu",
  url: "https://modsem.org/")
#student-entry(
  name: [Ceylin Karayel],
  year: "2023-2024",
  title: "Exploring the Link Between Mind-Wandering and Reinforcement Learning",
  role: none,
  url: "https://osf.io/ca95r")
#student-entry(
  name: [Krister Karlsen],
  year: "2021-2022",
  title: "Mind wandering and online experimentation",
  role: none,
  url: "https://osf.io/wjvk2")
#student-entry(
  name: [Maren Christensen],
  year: "2021-2022",
  title: "Volumetric changes in brain structures due to trauma",
  role: none,
  url: none)
#student-entry(
  name: [Andreas Alexandersen],
  year: "2020-2022",
  title: "The effect of transcranial direct current stimulation on the interplay between executive control, behavioral variability and mind wandering: A registered report",
  role: none,
  url: "https://hdl.handle.net/10037/25274")
#student-entry(
  name: [Caroline Angen \
Ina Klakegg \
Anastasija Kuprejeva],
  year: "2020-2021",
  title: "The effect of chronic pain and loss of control on value-based decision making",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: none)
#student-entry(
  name: [Eirik Melsæter],
  year: "2019",
  title: "Intermittent absence of control during reinforcement learning interferes with Pavlovian bias in action selection",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: "https://osf.io/89mdr")
#student-entry(
  name: [Tarjej Hotvedt],
  year: "2016",
  title: "Mindfulness and Psoriasis: A pilot study",
  role: none,
  url: "https://munin.uit.no/handle/10037/15507")
#student-entry(
  name: [Are Svendsen],
  year: "2014-2015",
  title: "Eksistensiell dynamisk terapi på inneliggende pasienter - en eksplorerende studie av utfall og relasjonelle virkningsmekanismer",
  role: "co-supervisor, main supervisor: Jørgen Sundby",
  url: none)
#student-entry(
  name: [Ida Marie Opdahl],
  year: "2014-2015",
  title: "Wandering body, wandering mind? The relationship between bodily movement, creativity and mind-wandering",
  role: none,
  url: "https://munin.uit.no/handle/10037/9143")
#student-entry(
  name: [Ira Beckmann],
  year: "2010",
  title: "Negatives Priming als Identifikations- oder Selektionsphänomen",
  role: "co-supervisor, main supervisor: Jörg Behrendt",
  url: none)

#v(0.5em)
== Professional students (Hovedoppgave)

#student-entry(
  name: [Ida Jespersen Rønningsen \
Marcus Buvik],
  year: "2023",
  title: "The effect of excitatory and inhibitory TBS over the left AG on mind wandering",
  role: none,
  url: "https://osf.io/x2vmt")
#student-entry(
  name: [Jostein Ilvær \
Andreas Thommesen],
  year: "2022",
  title: "The effect of transcranial temporal interference stimulation (tTIS) on value-based decision making in healthy adults",
  role: none,
  url: none)
#student-entry(
  name: [Emilia Judeth Olsen \
Nora N. Holmboe],
  year: "2022",
  title: "Parafilia og selvregulering: En normeringsstudie",
  role: none,
  url: "https://osf.io/sgk8v")
#student-entry(
  name: [Robert Taknes \
Tim Lockertsen],
  year: "2020",
  title: "Psykologi i rettens tjeneste: Hvilke faktorer påvirker årsaksattribusjon i erstatningssaker for psykisk helseskade?",
  role: "co-supervisor, main supervisor: Jørgen Sundby",
  url: "https://munin.uit.no/handle/10037/21126")
#student-entry(
  name: [Pål Ovanger Stensland],
  year: "2021",
  title: "The role of eye-movements and pupillometry in the representation of value in a reinforcement-learning context",
  role: none,
  url: none)
#student-entry(
  name: [Celina Jakobsen \
Joakim],
  year: "2021",
  title: "Klinikers vurdering mtp kjønn og ADHD utredninger",
  role: "co-supervisor, main supervisor: Jørgen Sundby",
  url: none)

#v(0.5em)
== Bachelor students

#student-entry(
  name: [Christian Fossheim],
  year: "2015",
  title: "Moment-to-moment fluctuations in emotional valence and mind-wandering",
  role: none,
  url: none)
#student-entry(
  name: [Ingrid Marie Skjerstad],
  year: "2017",
  title: "The wandering mind of the long-distance runner",
  role: none,
  url: none)
#student-entry(
  name: [Anna Elfrida Vollsund \
Iselin Finn],
  year: "2018",
  title: "Effectiveness of HD-tDCS on influencing executive control during mind wandering",
  role: none,
  url: "https://osf.io/nm2sz/")
#student-entry(
  name: [Kristian Østhagen Haukås],
  year: "2019",
  title: "The wandering mind of the long-distance runner",
  role: none,
  url: none)
#student-entry(
  name: [Aurora Vangen \
Samy Babiker \
Sanna Sandell \
Silje Haugan \
Steffen Rygg Aasen],
  year: "2021",
  title: "The effect of sleep-deprivation on mind-wandering: an EEG study",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: "https://osf.io/xq6wr")
#student-entry(
  name: [Emily Haga \
August Lullau],
  year: "2021",
  title: "Transcranial Magnetic Stimulation Efficacy in Depression - A Systematic Review and Meta-Analysis",
  role: none,
  url: none)
#student-entry(
  name: [Caroline Angen \
Marlene Holdt],
  year: "2020",
  title: "Employment of mental effort and representation of environmental volatility during intermittent absence of control over rewards and losses under different feedback schedules",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: "https://osf.io/7wcej/")
#student-entry(
  name: [Jorunn Bjørkøy \
Sarjo Kuyateh \
Håkon Reithe],
  year: "2018",
  title: "Transcranial direct current stimulation above the medial prefrontal cortex facilitates decision-making following periods of low outcome controllability",
  role: "co-supervisor, main supervisor: Gábor Csifcsák",
  url: "https://psyarxiv.com/rbeuz/")

#v(0.5em)
== Exchange students and Interns

#student-entry(
  name: [Stefan Weinhardt],
  year: "2025",
  title: "The effect of respiration on internal and externally directed attention",
  role: "co-supervisor, main supervisor: Sam Verschooren",
  url: "https://osf.io/xgjyr")
#student-entry(
  name: [Thea Waldleben],
  year: "2025",
  title: "High-precision multi-session estimation of individual functional connectivity networks",
  role: none,
  url: none)
#student-entry(
  name: [Federica Luzzi],
  year: "2022",
  title: "The effect of transcranial temporal interference stimulation (tTIS) on value-based decision making",
  role: none,
  url: "https://osf.io/rc756")
#student-entry(
  name: [Sven Wientjes],
  year: "2020",
  title: "Hidden Markov Models for estimating attentional focus",
  role: none,
  url: none)
#student-entry(
  name: [Terezie Sedlinska],
  year: "2019-2021",
  title: "The impact of loss-of-control on system arbitration",
  role: none,
  url: "https://osf.io/73huk")
#student-entry(
  name: [Tabea Brödel],
  year: "2021",
  title: "Methods for blink detection in pupillometric data",
  role: none,
  url: none)
#student-entry(
  name: [Isabel Kreis],
  year: "2016",
  title: "The role of executive functions in mind wandering",
  role: none,
  url: "https://doi.org/10.1111/ejn.15049")
#student-entry(
  name: [Carole Schmidt],
  year: "2017",
  title: "The role of executive functions in mind wandering",
  role: none,
  url: "https://doi.org/10.1111/ejn.15049")
#student-entry(
  name: [Divyaratan Popli],
  year: "2013",
  title: "Eye-tracking and pupillometric correlates of mind wandering",
  role: none,
  url: none)


#v(1em)
= Teaching

#resume-entry(
  title: [Lectures and supervision (University of Tromsø)],
  location: "Tromsø, Norway",
  date: "from 2014",
  description: ""
)

#resume-item[
*Undergraduate*

- Methods and Statistics III #text(fill: luma(120))[#smallcaps[(PSY-1513)]]
- Methods and Statistics I #text(fill: luma(120))[#smallcaps[(PSY-1511)]]
- Open Science #text(fill: luma(120))[#smallcaps[(PSY-2901)]]
- Cognitive Neuroscience #text(fill: luma(120))[#smallcaps[(PSY-2547, PSY-2553)]]
- Affective Neuroscience #text(fill: luma(120))[#smallcaps[(PSY-2549)]]
- Biological Psychology #text(fill: luma(120))[#smallcaps[(PSY-1004)]]
- Psychometrics #text(fill: luma(120))[#smallcaps[(PSY-1504)]]
- Practical Course: Gerontopsychology #text(fill: luma(120))[#smallcaps[(PSY-2543)]]
- Research Practical #text(fill: luma(120))[#smallcaps[(PSY-1509/1510)]]
- Research skills for Master students #text(fill: luma(120))[#smallcaps[(PSY-3900)]]
- Research communication #text(fill: luma(120))[#smallcaps[(PSY-1702)]]
*PhD Courses*

- Quantitative Research Methods #text(fill: luma(120))[#smallcaps[(HEL-8024)]]
- Applied Linear Regression #text(fill: luma(120))[#smallcaps[(HEL-8030)]]
- Research Design and Statistics #text(fill: luma(120))[#smallcaps[(PSY-8002)]]
- Quantitative Method in Clinical Health Research #text(fill: luma(120))[#smallcaps[(HEL-8017)]]
- Informal reading club for PhD students and faculty: Bayesian statistics
]

#resume-entry(
  title: [Lectures and supervision (NTNU, Trondheim)],
  location: "Trondheim, Norway",
  date: "from 2021",
  description: ""
)

#resume-item[
*Continuing Education and Professional Development*

- Learning R for research and reporting: From basics to advanced applications #text(fill: luma(120))[#smallcaps[(PSY6016)]]
*PhD Courses*

- Multivariate quantitative research methods #text(fill: luma(120))[#smallcaps[(PSY8003)]]
*Undergraduate*

- Research Methods #text(fill: luma(120))[#smallcaps[(PSY3100)]]
- Statistics and quantitative research methods #text(fill: luma(120))[#smallcaps[(PSY2017)]]
- Research Design #text(fill: luma(120))[#smallcaps[(PSY2022)]]
]

#resume-entry(
  title: [Lectures and supervision (University of Amsterdam)],
  location: "Amsterdam, The Netherlands",
  date: "summer 2013",
  description: ""
)

#resume-item[
*Master*

- Introduction to Neuroscientific Methods and Brain Anatomy: lecture and practical on electroencephalography
]

#resume-entry(
  title: [Lectures and supervision (University of Göttingen)],
  location: "Göttingen, Germany",
  date: "",
  description: ""
)

#resume-item[
*GGNB Methods Course (introductory level)*

- Introduction to Python Programming #text(fill: luma(120))[#smallcaps[(A123)]] -- winter term, 2011/2012
- Matlab and Python Programming #text(fill: luma(120))[#smallcaps[(A109)]] -- winter term, 2010/2011
*Teaching Seminar*

- Gestaltung von Lehr-Lernprozessen -- summer term, 2010: Introductory seminar to the psychology of learning and teaching for students pursuing teaching certification
]


#v(1em)
= Service and Leadership

== Appointments

#dated-entry(
  title: "Head of research, Institute of Psychology, UiT - The arctic university of Norway, Norway",
  date: "2022--2024",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Research group leader (RG Cognitive Neuroscience), Institute of Psychology, UiT - The arctic university of Norway, Norway",
  date: "2022--",
  amount: "",
  description: none,
  url: none)

== Selected advisorial and managerial activities

#dated-entry(
  title: "Management committee COST action CA24148",
  date: "2025",
  amount: "",
  description: none,
  url: "https://www.cost.eu/actions/CA24148/")
#dated-entry(
  title: "Reviewer Riksbankens Jubileumsfond RJ",
  date: "2025",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Review panel member, online course on 'Statistical research methods', Epigum (Sage Publications)",
  date: "2024",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "European Research Council (reviewer for ERC Consolidator Grant, ECoG)",
  date: "2024",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Reviewer The French National Centre for Scientific Research (CNRS) - ATIP - Avenir program",
  date: "2022",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Reviewer Netherlands Organisation for Scientific Research (NWO) - Vici Social Sciences and Humanities",
  date: "2019",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Advisor Hertie Foundation Project: Improvement of school education by neuroscientific research",
  date: "2017",
  amount: "",
  description: none,
  url: none)

== Professional development

#dated-entry(
  title: "Research group leader development program (University of Tromsø)",
  date: "2021--2022",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Program for young research leaders; joint program University of Oslo, University of Bergen, University of Trondheim, University of Tromsø - leadership, networking, financing, communication, strategy",
  date: "2014--2015",
  amount: "",
  description: none,
  url: "https://www.uib.no/psyfa/43678/program-yngre-forskningsledere")
#dated-entry(
  title: "Recording and Analysis of Eye-Movements, Cologne, Germany",
  date: "2008",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Computational Neuroscience at the Max-Planck-Institute for Dynamics and Self-Organization",
  date: "2005",
  amount: "",
  description: none,
  url: none)

== Institutional Responsibilities

#dated-entry(
  title: "Selection committee for Associate professor in quantitative methods (University of Trondheim)",
  date: "2022",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Evaluation committee for evaluation of qualification for professorship (University of Tromsø)",
  date: "2022",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Head of the Research Ethics Committee at the Institute for Psychology (IPS-REC, University of Tromsø)",
  date: "2022--2024",
  amount: "",
  description: none,
  url: "https://en.uit.no/research/ethics/ips")
#dated-entry(
  title: "Head of committee IPS Research forum (University of Tromsø)",
  date: "2022--2024",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Member of faculty-level PhD committee (University of Tromsø)",
  date: "2022--2024",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Head of selection committee for Associate professor in cognitive neuroscience (University of Bergen)",
  date: "2021",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Selection committee for PhD positions (University of Trondheim, University of Bergen, University of Helsinki)",
  date: "2021",
  amount: "",
  description: none,
  url: none)
#dated-entry(
  title: "Evaluation committee for several PhD and post-doc positions (University of Tromsø)",
  date: "2014--",
  amount: "",
  description: none,
  url: none)


#v(1em)
= Skills

*Experimental Methods* \
fMRI, EEG/ERP, EOG, tDCS, TMS, eye-tracking, pupillometry

#v(0.5em)
*Programming Languages* \
_Very Good:_ Python, R, C, C++, Matlab/Octave \
_Good:_ Perl, Java, SQL, PHP, Presentation \
_Moderate:_ F77, Assembler, Objective C, Bash, Javascript

#v(0.5em)
*Computing* \
Parallel Programming (MPI), GPU Programming (OpenGL), Unix/Linux Administration, LaTeX, HTML/CSS

= Languages

*German* (native) \
*English* (fluently written, read and spoken) \
*Norwegian* (fluently written, read and spoken) \
*French* (basic skills) \
*Dutch* (basic skills) \

= Interests

running, skiing, judo, rock-climbing, hiking, table-tennis, football

