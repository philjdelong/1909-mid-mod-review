require 'rails_helper'

describe Member do
  it "has the necessary attributes" do
    member_data = {
        "_id": "5a0fa7dcae5bc100213c2338",
        "name": "Sirius Black",
        "house": "Gryffindor",
        "school": "Hogwarts School of Witchcraft and Wizardry",
        "alias": "Padfoot",
        "animagus": "black dog",
        "__v": 0,
        "ministryOfMagic": false,
        "orderOfThePhoenix": true,
        "dumbledoresArmy": false,
        "deathEater": false,
        "bloodStatus": "pure-blood",
        "species": "human"
    }

    member = Member.new(member_data)
    expect(member.name).to eq('Sirius Black')
    expect(member.role).to eq('none specified')
    expect(member.patronus).to eq('Not cool enough to have one')
    expect(member.house).to eq('Gryffindor')
  end
end
