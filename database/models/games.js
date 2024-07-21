module.exports = (sequelize, DataTypes) => {
    return sequelize.define('games', {
        game_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            AutoIncrement: true
        },
        game_name: {
            type: DataTypes.TEXT
        },
        description: {
            type: DataTypes.TEXT
        }
    },{
        timestamp: false
    });
}; 