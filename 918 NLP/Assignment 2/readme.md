The code has been run on CPU with:

Python: 3.10.0
NumPy: 1.23.5
Matplotlib: 3.8.1
Scikit-learn: 1.3.2
NLTK: 3.8.1
PyTorch: 2.2.1
Transformers: 4.38.2

Everything can be installed using pip install.


Supporting files:

/glove.6B.100d.txt    # The GloVe embedding file
/lstm.pt              # State dict for LSTM model
/transformer.pt       # State dict for BERT model


Assumptions:

Assume all train, dev and test files are under folder 'semeval-tweets'
Assume trainset = 'twitter-training-data.txt' exists and is used for training
Assume devset = 'twitter-dev-data.txt' exists and is used for validation
Assume all test sets are listed in testsets = ['twitter-test1.txt', ...]

Please add the file names of any other new test sets to the list