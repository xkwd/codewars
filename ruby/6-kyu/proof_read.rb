=begin

https://www.codewars.com/kata/proof-read/ruby

You've just finished writing the last chapter for your novel when a virus
suddenly infects your document. It has swapped the 'i's and 'e's in 'ei' words
and capitalised random letters. Write a function which will:

a) remove the spelling errors in 'ei' words. (Example of 'ei' words: their,
caffeine, deceive, weight)

b) only capitalise the first letter of each sentence. Make sure the rest of the
sentence is in lower case.

Example: He haD iEght ShOTs of CAffIEne. --> He had eight shots of caffeine.

Sample tests:

Test.describe("Basic tests") do
  Test.assert_equals( proofread("SHe wEnt CaNoIenG."), "She went canoeing.")
  Test.assert_equals( proofread("He haD iEght ShOTs of CAffIEne"),
                                "He had eight shots of caffeine")
  Test.assert_equals( proofread("THe neIghBour's ceiLing FEll on His Head. The WiEght of It crusHed him To thE gROuNd."),
                                "The neighbour's ceiling fell on his head. The weight of it crushed him to the ground.")
  Test.assert_equals( proofread("ThE kiDs enJoYEd the SLiegh RidE."),
                                "The kids enjoyed the sleigh ride.")
  Test.assert_equals( proofread("SHE did NOT diegn to GUESS her NIEGHBOUR'S wieght."),
                                "She did not deign to guess her neighbour's weight.")
  Test.assert_equals( proofread("They had to fIEgn thIEr appreciation for her bIEge tights."),
                                "They had to feign their appreciation for her beige tights.")
  Test.assert_equals( proofread("Niether of the fencers wanted to forfiet the match. They both expected to sieze victory."),
                                "Neither of the fencers wanted to forfeit the match. They both expected to seize victory.")
  Test.assert_equals( proofread("Protien intAkE miGHt afFect aNy pOteNtIaL wieght LOSs."),
                                "Protein intake might affect any potential weight loss." )
  Test.assert_equals( proofread("MargArEt cAn't eVen concIEve of foRegOing the pARty to finisH her paPEr."),
                                "Margaret can't even conceive of foregoing the party to finish her paper." )
  Test.assert_equals( proofread("IN the wINter, it's NICE to gO for a sliegh rIDe"),
                                "In the winter, it's nice to go for a sleigh ride")
  Test.assert_equals( proofread("The mAN's ONly pURpose in lIFe is to decIEve his wIFe."),
                                "The man's only purpose in life is to deceive his wife.")
  Test.assert_equals( proofread("She LifTeD heR ViEL. The ShIeK LooKeD aT hER ExPeCtAnTlY"),
                                "She lifted her veil. The sheik looked at her expectantly")
  Test.assert_equals( proofread("PetEr Was Not Sure of WHAt he WAs sEIEng. HE had To RIEn in HIs SHock."),
                                "Peter was not sure of what he was seeing. He had to rein in his shock." )
  Test.assert_equals( proofread("That is OnE lonG frieghT traiN thAt's Blocking The Railway Crossing."),
                                "That is one long freight train that's blocking the railway crossing.")
  Test.assert_equals( proofread(""), "")
end

=end

# Solution
def proofread(string)
  string.downcase.gsub(/ie/, "ei").gsub(/([a-z])([^.]*)/) { $1.upcase + $2 }
end

# Liked solution, not necessarily a top one or best practice
def proofread(string)
  string.downcase.gsub('ie','ei').capitalize.gsub(/\. ([a-z])/, &:upcase)
end
