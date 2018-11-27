import re
import os

word_color_line_pattern = re.compile('(\w+)--(\w+(?:,?\s\w+)*)\tColour=(\w+)\tVotesForThisColour=(\w+)\tTotalVotesCast=(\w+)')

word_color_file_contents = ''
with open(os.path.dirname(os.path.realpath(__file__)) + '/NRC-color-lexicon-senselevel-v0.92.txt') as f1:
    word_color_file_contents = f1.read()

affect_intensity_file_contents = ''
with open(os.path.dirname(os.path.realpath(__file__)) + '/NRC-AffectIntensity-Lexicon.txt') as f2:
    affect_intensity_file_contents = f2.read()

word_color_lines = word_color_file_contents.split('\n')
word_color_associations = {}
colors = set()

for line in word_color_lines:
    if not line:
        continue

    match = word_color_line_pattern.match(line)

    if not match:
        print(line)
        continue

    word = match.group(1)
    senses = match.group(2).split(', ')
    color = match.group(3)
    votes_for_color = match.group(4)
    total_votes = match.group(5)

    word_color_associations[word] = {
        'senses': senses,
        'color': color if color != 'None' else None,
        'votes_for_color': votes_for_color,
        'total_votes': total_votes
    }
    colors.add(color if color != 'None' else None)

colors = list(colors)

word_affect_intensity_associations = {}
affect_intensity_lines = affect_intensity_file_contents.split('\n')
affects = set()

for line in affect_intensity_lines:
    if not line:
        continue

    word, score, affect = line.split()

    if word not in word_affect_intensity_associations:
        word_affect_intensity_associations[word] = []

    word_affect_intensity_associations[word].append({'score': score, 'affect': affect})
    affects.add(affect)

affects = list(affects)
